// ignore_for_file: type_annotate_public_apis
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
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';
import 'package:yellow_squash/utils/validators.dart';

@RoutePage()
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => LoginCubit(LoginRepository()),
      child: const LoginView(),
    );
  }
}

class LoginView extends StatefulWidget with InputValidationMixin {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  bool _obscureTextFirst = true;
  // ignore: unused_element
  void _toggle() {
    setState(() {
      _obscureTextFirst = !_obscureTextFirst;
    });
  }

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  final phoneTextField = TextEditingController();

  final passTextField = TextEditingController();

  late bool _confirmPassVisible;

  @override
  void initState() {
    _confirmPassVisible = false;
    checkUserLogin();
    super.initState();
  }

  // ignore: always_declare_return_types, inference_failure_on_function_return_type
  checkUserLogin() async {
    if (await StorageManager.getIsUserLoggedIn()) {
      await getIt<AppRouter>().replaceAll([const HomeRoute()]);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocListener<LoginCubit, LoginState>(
        listener: (context, state) async {
          if (state is LoginUserLoaded) {
            StorageManager.setToken(state.response.token!);
            StorageManager.saveUserLoggedIn(true);
            StorageManager.saveUserData(state.response.data!);
            await getIt<AppRouter>().replaceAll([const HomeRoute()]);
            toast('login successfully');
          } else if (state is ErrorState) {
            toast('Invalid Credentials');
          }
        },
        child: Stack(
          children: [
            SingleChildScrollView(
              child: Form(
                key: loginFormKey,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 60.h, right: 15.h),
                      child: TextButton(
                        child: const Text(
                          'Skip',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(187, 187, 187, 1),
                          ),
                        ),
                        onPressed: () {
                          getIt<AppRouter>().push(const GuestHouse());
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(35),
                      child: Column(
                        children: [
                          SizedBox(
                            height: 110.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Hey,',
                                style: TextStyle(
                                  color: const Color.fromRGBO(0, 0, 0, 1),
                                  fontWeight: FontWeight.w500,
                                  fontSize: 26.sp,
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                'Login Now.',
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
                          const SizedBox(
                            height: 4,
                          ),
                          TextFormField(
                            controller: phoneTextField,
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
                              hintText: 'WhatsApp Number',

                              border: OutlineInputBorder(),
                              contentPadding: EdgeInsets.only(left: 14),
                            ),
                          ),
                          SizedBox(
                            height: 15.h,
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          TextFormField(
                            controller: passTextField,
                            obscureText: _obscureTextFirst,
                            validator: (value) {
                              if (value!.isEmpty) {
                                return 'Enter Password';
                              }

                              return null;
                            },
                            decoration: InputDecoration(
                              prefixIcon: const Icon(
                                Icons.lock,
                                color: Colors.grey,
                              ),
                              prefixIconConstraints: const BoxConstraints(
                                minWidth: 40,
                                minHeight: 40,
                              ),
                              hintText: 'Password',
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
                                    _obscureTextFirst = !_obscureTextFirst;
                                  });
                                },
                              ),
                              border: const OutlineInputBorder(),
                              contentPadding: const EdgeInsets.only(left: 14),
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  getIt<AppRouter>().push(const ResetRoute());
                                },
                                child: Text(
                                  'Forgot Password?',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(15, 166, 84, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          CustomButton(
                            buttonText: 'Login',
                            onPressed: () {
                              FocusScope.of(context).requestFocus(FocusNode());
                              if (loginFormKey.currentState!.validate()) {
                                context.read<LoginCubit>().loginUser(
                                      mobile: phoneTextField.text,
                                      password: passTextField.text,
                                    );
                              }
                            },
                            width: 600.w,
                          ),
                          SizedBox(
                            height: 60.h,
                          ),
                          TextButton(
                            onPressed: () {
                              getIt<AppRouter>().push(const MobileInputRoute());
                            },
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'New Here?',
                                  style: TextStyle(
                                    color:
                                        const Color.fromRGBO(147, 147, 147, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ),
                                Text(
                                  'Sign Up',
                                  style: TextStyle(
                                    color: const Color.fromRGBO(15, 166, 84, 1),
                                    fontWeight: FontWeight.w400,
                                    fontSize: 16.sp,
                                  ),
                                ),
                              ],
                            ),
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
