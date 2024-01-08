import 'dart:async';

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
import 'package:yellow_squash/screens/auth_screen/view/widgets/otp_input.dart'; // Add this import
import 'package:yellow_squash/utils/common_widgets/circular_arrow.dart'; // Add this import
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';

@RoutePage()
class OtpVerifyScreen extends StatelessWidget {
  const OtpVerifyScreen({
    required this.number,
    super.key,
  });

  final String number;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(LoginRepository()),
      child: OtpVerifyView(
        number: number,
      ),
    );
  }
}

class OtpVerifyView extends StatefulWidget {
  const OtpVerifyView({required this.number, super.key});

  final String number;

  @override
  // ignore: library_private_types_in_public_api
  _OtpVerifyViewState createState() => _OtpVerifyViewState();
}

class _OtpVerifyViewState extends State<OtpVerifyView> {
  int _countdownSeconds = 60;
  Timer? _countdownTimer;
  final otpController = TextEditingController(); // Add this line

  @override
  void initState() {
    super.initState();
    startCountdown();
  }

  @override
  void dispose() {
    _countdownTimer?.cancel();
    super.dispose();
  }

  void startCountdown() {
    _countdownTimer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_countdownSeconds > 0) {
          _countdownSeconds--;
        } else {
          _countdownTimer?.cancel();
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is OtpVerifyLoaded) {
            getIt<AppRouter>().push(RegisterRoute(number: widget.number));
            toast('Phone Number verified');
          } else if (state is ErrorState) {
            return toast('Invalid Otp');
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
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
                              'Please enter the 6-digit OTP sent to',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w400,
                                fontSize: 18.sp,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Text(
                              '+91 ${widget.number}',
                              style: TextStyle(
                                color: const Color.fromRGBO(0, 0, 0, 1),
                                fontWeight: FontWeight.w500,
                                fontSize: 14.h,
                              ),
                            ),
                            IconButton(
                              onPressed: () {
                                getIt<AppRouter>().pop();
                              },
                              icon: Icon(
                                Icons.edit,
                                color: const Color.fromRGBO(13, 191, 95, 1),
                                size: 22.h,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 24.h,
                        ),
                        OtpInputWidget(
                          controller: otpController,
                          onSubmit: (String value) {
                            context
                                .read<LoginCubit>()
                                .verifyOtp(mobile: widget.number, otp: value);
                          },
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        CustomButton(
                          buttonText: 'Verify',
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());
                            if (otpController.text.isEmpty) {
                              toast('Please Enter Otp');
                            } else {
                              context.read<LoginCubit>().verifyOtp(
                                    mobile: widget.number,
                                    otp: otpController.text,
                                  );
                            }
                          },
                          width: 600.w,
                        ),
                        const SizedBox(
                          height: 28,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            InkWell(
                              onTap: _countdownSeconds > 0
                                  ? null
                                  : () {
                                      context.read<LoginCubit>().generateOtp(
                                            mobile: widget.number,
                                          );
                                      setState(() {
                                        _countdownSeconds = 60;
                                        startCountdown();
                                      });
                                    },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  if (_countdownSeconds > 0)
                                    Text(
                                      'Resend otp in $_countdownSeconds s',
                                      style: TextStyle(
                                        color: const Color.fromRGBO(
                                          13,
                                          191,
                                          95,
                                          1,
                                        ),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.0.sp,
                                      ),
                                    ),
                                  if (_countdownSeconds == 0)
                                    Text(
                                      'Resend OTP ?',
                                      style: TextStyle(
                                        color: _countdownSeconds > 0
                                            ? Colors.grey
                                            : const Color.fromRGBO(
                                                13,
                                                191,
                                                95,
                                                1,
                                              ),
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18.0.sp,
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
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
