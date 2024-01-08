// ignore_for_file: use_if_null_to_convert_nulls_to_bools, lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
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
class ResetScreen extends StatelessWidget {
  const ResetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(LoginRepository()),
      child: const ResetView(),
    );
  }
}

class ResetView extends StatefulWidget with InputValidationMixin {
  const ResetView({super.key});

  @override
  State<ResetView> createState() => _ResetViewState();
}

class _ResetViewState extends State<ResetView> {
  final mobileTextField = TextEditingController();
  // ignore: non_constant_identifier_names
  final GlobalKey<FormState> ResetFormKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is SentOtpLoaded) {
            if (state.response.status == true) {
              getIt<AppRouter>().push(
                ForgetOtpVerifyRoute(number: mobileTextField.text),
              );
              toast(state.response.message);
            }
          } else if (state is ErrorState) {
            toast('Number is not Registered');
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: ResetFormKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(35),
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
                                'Reset Password',
                                style: TextStyle(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.sp,
                                ),
                              ),
                            ],
                          ),
                          Wrap(
                            children: [
                              Text(
                                'Enter your registered  phone number. associated with your YellowSquash account',
                                style: TextStyle(
                                  color: const Color.fromRGBO(124, 123, 123, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          TextFormField(
                            controller: mobileTextField,
                            validator: (val) {
                              return widget.phoneNumberValidator(val!);
                            },
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              hintText: 'Phone Number',
                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.only(left: 14),
                            ),
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomButton(
                            buttonText: 'Proceed',
                            onPressed: () {
                              FocusScope.of(context).requestFocus(FocusNode());
                              if (ResetFormKey.currentState!.validate()) {
                                context.read<LoginCubit>().forgetGenerateOtp(
                                      mobile: mobileTextField.text,
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
