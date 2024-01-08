import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/auth_screen/cubit/login_cubit.dart';
import 'package:yellow_squash/screens/auth_screen/repository/login_repository.dart';
import 'package:yellow_squash/utils/common_widgets/circular_arrow.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';

@RoutePage()
class CreateScreen extends StatelessWidget {
  const CreateScreen({required this.userId, super.key});
  final String userId;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(LoginRepository()),
      child: CreateView(),
    );
  }
}

class CreateView extends StatelessWidget {
  CreateView({super.key});
  final GlobalKey<FormState> forgetFormKey = GlobalKey<FormState>();
  final passTextField = TextEditingController();
  final confirmPassTextField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<LoginCubit, LoginState>(
        builder: (context, state) {
          if (state is UpdatePassword) {
            getIt<AppRouter>().push(const HomeRoute());
          }

          return SingleChildScrollView(
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
                              'Create a New Password.',
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
                        TextField(
                          obscureText: true,
                          controller: passTextField,
                          keyboardType: TextInputType.text,
                          decoration: const InputDecoration(
                            hintText: 'Password',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.only(left: 14),
                          ),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        TextField(
                          controller: confirmPassTextField,
                          obscureText: true,
                          decoration: const InputDecoration(
                            hintText: 'Confirm Password',
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.only(left: 14),
                          ),
                        ),
                        SizedBox(
                          height: 30.h,
                        ),
                        CustomButton(
                          buttonText: 'Reset Password',
                          onPressed: () {
                            FocusScope.of(context).requestFocus(FocusNode());

                            // if (forgetFormKey.currentState!.validate()) {
                            //   context.read<LoginCubit>().forgetUser(
                            //       //  userId: ,
                            //         password: passTextField.text,
                            //       );
                            // }
                          },
                          width: 600.w,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
