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
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/validators.dart';

@RoutePage()
class MobileInputScreen extends StatelessWidget {
  const MobileInputScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(LoginRepository()),
      child: const MobileInputView(),
    );
  }
}

class MobileInputView extends StatefulWidget with InputValidationMixin {
  const MobileInputView({super.key});

  @override
  State<MobileInputView> createState() => _MobileInputScreenState();
}

class _MobileInputScreenState extends State<MobileInputView> {
  final mobileTextField = TextEditingController();
  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) {
          if (state is SentOtpLoaded) {
            getIt<AppRouter>().push(
              OtpVerifyRoute(number: mobileTextField.text),
            );
            toast(state.response.message);
          } else if (state is ErrorState) {
            logs(state);
            toast('Number is already Registered');
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: loginFormKey,
                // autovalidateMode: AutovalidateMode.onUserInteraction,
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
                                'Welcome,',
                                style: TextStyle(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.96.sp,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Let's Get Started",
                                style: TextStyle(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.96.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Enter Phone Number',
                                style: TextStyle(
                                  color: const Color.fromRGBO(124, 123, 123, 1),
                                  fontWeight: FontWeight.w400,
                                  fontSize: 16.sp,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          TextFormField(
                            controller: mobileTextField,
                            validator: (value) =>
                                widget.phoneNumberValidator(value!),
                            keyboardType: TextInputType.phone,
                            decoration: const InputDecoration(
                              prefixIcon: Icon(
                                Icons.phone,
                                color: Colors.grey,
                              ), // Phone icon
                              prefixIconConstraints:
                                  BoxConstraints(minWidth: 40, minHeight: 40),
                              hintText: 'Enter WhatsApp Number',

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
                              if (loginFormKey.currentState!.validate()) {
                                context
                                    .read<LoginCubit>()
                                    .generateOtp(mobile: mobileTextField.text);
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
