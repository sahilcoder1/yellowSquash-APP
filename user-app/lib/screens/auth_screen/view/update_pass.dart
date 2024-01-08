// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/auth_screen/cubit/login_cubit.dart';
import 'package:yellow_squash/screens/auth_screen/repository/login_repository.dart';
import 'package:yellow_squash/utils/common_widgets/circular_arrow.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';
import 'package:yellow_squash/utils/validators.dart';

@RoutePage()
class UpdatePasswordScreen extends StatelessWidget {
  const UpdatePasswordScreen({
    required this.userId,
    super.key,
  });
  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(LoginRepository()),
      child: UpdatePasswordView(
        userId: userId,
      ),
    );
  }
}

class UpdatePasswordView extends StatefulWidget with InputValidationMixin {
  UpdatePasswordView({
    required this.userId,
    super.key,
  });
  final String userId;

  @override
  State<UpdatePasswordView> createState() => _UpdatePasswordViewState();
}

class _UpdatePasswordViewState extends State<UpdatePasswordView> {
  bool _obscureTextFirst = true;
  bool _obscureTextSecond = true;
  late bool _confirmPassVisible;

  // Toggles the password show status
  // ignore: unused_element
  void _toggle() {
    setState(() {
      _obscureTextFirst = !_obscureTextFirst;
    });
  }

  // ignore: unused_element
  void _toggleSecond() {
    setState(() {
      _obscureTextSecond = !_obscureTextSecond;
    });
  }

  @override
  void initState() {
    _confirmPassVisible = false;
    super.initState();
  }

  final GlobalKey<FormState> forgetFormKey = GlobalKey<FormState>();

  final passTextField = TextEditingController();

  final confirmPassTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is UpdatePassword) {
            toast('Password Updated Successfully');
            getIt<AppRouter>().push(const LoginRoute());
          } else if (state is ErrorState) {
            if (state.e is DioError) {
              final dioError = state.e as DioError;
              if (dioError.response != null &&
                  dioError.response!.statusCode == 400) {
                toast('Invalid Credentials');
              } else {
                toast('An error occurred: ${dioError.message}');
              }
            } else {
              toast('An error occurred: ${state.e}');
            }
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: forgetFormKey,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(35.h),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 20.h,
                          ),
                          const CircularArrow(),
                          SizedBox(
                            height: 110.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Create a new password.',
                                style: TextStyle(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.96.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 24.h,
                          ),
                          TextFormField(
                            controller: passTextField,
                            obscureText: _obscureTextFirst,
                            validator: (value) {
                              // Check for empty password
                              if (value!.isEmpty) {
                                return 'Please enter a password';
                              }

                              // Check for password length
                              if (value.length < 6) {
                                return 'Password must be at least 6 characters long';
                              }

                              // Check for at least one capital letter
                              if (!value.contains(RegExp('[A-Z]'))) {
                                return 'Password must contain at least one capital letter';
                              }

                              // Check for at least one special character
                              if (!value.contains(
                                RegExp(r'[!@#\$%^&*(),.?":{}|<>]'),
                              )) {
                                return 'Password must contain at least one special character';
                              }

                              // Return null if the password is valid (no error)
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Change Password',
                              suffixIcon: IconButton(
                                color: Colors.amber,
                                icon: Icon(
                                  _obscureTextFirst
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color.fromRGBO(124, 123, 123, 1),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _confirmPassVisible = !_confirmPassVisible;
                                    _obscureTextFirst =
                                        !_obscureTextFirst; // Toggle the value here
                                  });
                                },
                              ),
                              border: const OutlineInputBorder(),
                              contentPadding: const EdgeInsets.only(left: 14),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          TextFormField(
                            controller: confirmPassTextField,
                            obscureText: _obscureTextSecond,
                            validator: (value) {
                              // Check for empty confirm password
                              if (value!.isEmpty) {
                                return 'Please enter the confirm password';
                              }

                              // Check if the confirm password matches the new password
                              if (value != passTextField.text) {
                                return 'Passwords do not match';
                              }

                              // Return null if the confirm password is valid (no error)
                              return null;
                            },
                            decoration: InputDecoration(
                              hintText: 'Confirm Password',
                              suffixIcon: IconButton(
                                color: Colors.amber,
                                icon: Icon(
                                  _obscureTextSecond
                                      ? Icons.visibility
                                      : Icons.visibility_off,
                                  color: const Color.fromRGBO(124, 123, 123, 1),
                                ),
                                onPressed: () {
                                  setState(() {
                                    _confirmPassVisible = !_confirmPassVisible;
                                    _obscureTextSecond =
                                        !_obscureTextSecond; // Toggle the value here
                                  });
                                },
                              ),
                              border: const OutlineInputBorder(),
                              contentPadding: const EdgeInsets.only(left: 14),
                            ),
                          ),
                          SizedBox(
                            height: 30.h,
                          ),
                          CustomButton(
                            buttonText: 'Reset Password',
                            onPressed: () {
                              FocusScope.of(context).requestFocus(FocusNode());

                              if (forgetFormKey.currentState!.validate()) {
                                context.read<LoginCubit>().forgetUser(
                                      userId: widget.userId,
                                      password: passTextField.text,
                                    );
                              }
                            },
                            width: 600.w,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            BlocBuilder<LoginCubit, LoginState>(
              builder: (context, state) {
                return Stack(
                  children: [
                    const SizedBox.expand(),
                    LoadingIndicator(
                      show: state is Loading,
                    ),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
