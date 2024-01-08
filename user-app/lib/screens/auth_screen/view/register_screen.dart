// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/annotations.dart';
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
import 'package:yellow_squash/utils/services/storage_manager.dart';
import 'package:yellow_squash/utils/validators.dart';

@RoutePage()
class RegisterScreen extends StatelessWidget {
  const RegisterScreen({required this.number, super.key});

  final String number;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(LoginRepository()),
      child: RegisterView(
        number: number,
      ),
    );
  }
}

class RegisterView extends StatefulWidget with InputValidationMixin {
  const RegisterView({required this.number, super.key});
  final String number;

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool _obscureTextFirst = true;
  bool _obscureTextSecond = true;

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  bool checkedVal = false;

  late bool _passVisible;
  late bool _confirmPassVisible;

  final nameTextField = TextEditingController();
  final emailTextField = TextEditingController();
  final passwordTextField = TextEditingController();
  final confirmPassTextField = TextEditingController();

  @override
  void initState() {
    _passVisible = false;
    _confirmPassVisible = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is RegisterUserLoaded) {
            StorageManager.setToken(state.response.token!);
            StorageManager.saveUserLoggedIn(true);
            StorageManager.saveUserData(state.response.data!);
            getIt<AppRouter>().push(const HomeRoute());
            toast('login successfully');
          }
          if (state is ErrorState) {
            toast(state.e);
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(32),
                child: Form(
                  key: registerFormKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20.h,
                      ),
                      const CircularArrow(),
                      SizedBox(
                        height: 110.h,
                      ),
                      Text(
                        'Sign Up',
                        style: TextStyle(
                          color: const Color.fromRGBO(0, 0, 0, 1),
                          fontWeight: FontWeight.w500,
                          fontSize: 26.96.sp,
                        ),
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      TextFormField(
                        controller: nameTextField,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter full name';
                          }
                          return null;
                        },
                        style: const TextStyle(
                          color: Color.fromRGBO(124, 123, 123, 1),
                        ),
                        decoration: const InputDecoration(
                          hintText: 'Full name',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(left: 14),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormField(
                        controller: emailTextField,
                        keyboardType: TextInputType.emailAddress,
                        validator: (value) {
                          // Check for empty email
                          if (value!.isEmpty) {
                            return 'Please enter an email address';
                          }

                          final emailRegex =
                              RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                          if (!emailRegex.hasMatch(value)) {
                            return 'Please enter a valid email address';
                          }
                          return null;
                        },
                        decoration: const InputDecoration(
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.grey,
                          ), // Phone icon
                          prefixIconConstraints:
                              BoxConstraints(minWidth: 40, minHeight: 40),
                          hintText: 'Email address',
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.only(left: 14),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormField(
                        enabled: false,
                        readOnly: true,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.phone,
                            color: Colors.grey,
                          ), // Phone icon
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 40, minHeight: 40),
                          hintText: widget.number,
                          border: const OutlineInputBorder(),
                          contentPadding: const EdgeInsets.only(left: 14),
                        ),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      TextFormField(
                        controller: passwordTextField,
                        obscureText: _obscureTextSecond,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter a password';
                          }

                          if (value.length < 6) {
                            return 'Password must be at least 6 characters long';
                          }

                          if (!value.contains(RegExp('[A-Z]'))) {
                            return 'Password must contain at least one capital letter';
                          }

                          if (!value
                              .contains(RegExp(r'[!@#\$%^&*(),.?":{}|<>]'))) {
                            return 'Password must contain at least one special character';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ), // Phone icon
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 40, minHeight: 40),
                          hintText: 'Password',
                          suffixIcon: IconButton(
                            color: Colors.amber,
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _confirmPassVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color.fromRGBO(124, 123, 123, 1),
                            ),
                            onPressed: () {
                              setState(() {
                                _confirmPassVisible = !_confirmPassVisible;
                                _obscureTextSecond = !_obscureTextSecond;
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
                        obscureText: _obscureTextFirst,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return 'Please enter the confirm password';
                          }
                          if (value != passwordTextField.text) {
                            return 'Passwords do not match';
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          prefixIcon: const Icon(
                            Icons.lock,
                            color: Colors.grey,
                          ), // Phone icon
                          prefixIconConstraints:
                              const BoxConstraints(minWidth: 40, minHeight: 40),
                          hintText: 'Confirm Password',
                          suffixIcon: IconButton(
                            color: Colors.amber,
                            icon: Icon(
                              // Based on passwordVisible state choose the icon
                              _passVisible
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color: const Color.fromRGBO(124, 123, 123, 1),
                            ),
                            onPressed: () {
                              setState(() {
                                _passVisible = !_passVisible;
                                _obscureTextFirst = !_obscureTextFirst;
                              });
                            },
                          ),
                          border: const OutlineInputBorder(),
                          contentPadding: const EdgeInsets.only(left: 14),
                        ),
                      ),
                      Row(
                        children: [
                          Checkbox(
                            value: checkedVal,
                            onChanged: (bool? value) {
                              setState(() {
                                checkedVal = value!;
                              });
                            },
                          ),
                          const Text(
                            'I agree to all',
                            style: TextStyle(
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: const Text(
                              'Terms and Conditions',
                              style: TextStyle(
                                color: Color.fromRGBO(15, 166, 84, 1),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      CustomButton(
                        buttonText: 'Verify',
                        onPressed: () {
                          FocusScope.of(context).requestFocus(FocusNode());
                          if (registerFormKey.currentState!.validate() &&
                              checkedVal) {
                            context.read<LoginCubit>().registerUser(
                                  role: 'user',
                                  mobile: widget.number,
                                  name: nameTextField.text,
                                  email: emailTextField.text,
                                  password: passwordTextField.text,
                                );
                          } else if (!checkedVal) {
                            toast('Please accept the Terms and Conditions');
                          }
                        },
                        width: 600.w,
                      ),
                    ],
                  ),
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
