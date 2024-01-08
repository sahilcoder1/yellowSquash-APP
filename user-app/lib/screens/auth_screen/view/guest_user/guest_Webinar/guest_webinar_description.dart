// ignore_for_file: lines_longer_than_80_chars

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/webinar_description_screen/cubit/webinar_description_cubit_cubit.dart';
import 'package:yellow_squash/screens/webinar_description_screen/repository/webinar_description_repository.dart';
import 'package:yellow_squash/utils/common_widgets/countdown_page.dart';
import 'package:yellow_squash/utils/common_widgets/expert_card_webinar.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';
import 'package:yellow_squash/utils/common_widgets/videoPlayerWidget.dart';
import 'package:yellow_squash/utils/logs.dart';

@RoutePage()
class GuestWebinarDescriptionScreen extends StatelessWidget {
  const GuestWebinarDescriptionScreen({
    required this.id,
    super.key,
  });
  final String id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) =>
          WebinarDescriptionCubitCubit(WebinarDescriptionRepository()),
      child: WebinarDescriptionView(
        id: id,
      ),
    );
  }
}

class WebinarDescriptionView extends StatefulWidget {
  const WebinarDescriptionView({required this.id, super.key});
  final String id;

  @override
  State<WebinarDescriptionView> createState() => _WebinarDescriptionViewState();
}

class _WebinarDescriptionViewState extends State<WebinarDescriptionView> {
  final newformKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  String setname = '';
  String setemail = '';
  String setphone = '';
  int amount = 0;
  bool isPurchased = false;
  bool buttonStatus = false;

  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _refreshData() async {
    await context
        .read<WebinarDescriptionCubitCubit>()
        .getWebinarsDescription(id: widget.id);
  }

  @override
  void initState() {
    context
        .read<WebinarDescriptionCubitCubit>()
        .getWebinarsDescription(id: widget.id);
    super.initState();
  }

  void initiliseRazorPay({
    required String name,
    required String orderId,
    String? email,
    String? phone,
  }) {
    final razorpay = Razorpay();
    final options = {
      'key': 'rzp_test_JHwkpCgrZ100a0',
      'amount': amount,
      'name': 'YellowSquash',
      'order_id': orderId,
      'description': 'Register for the Webinar',
      'retry': {'enabled': true, 'max_count': 1},
      'send_sms_hash': true,
      'prefill': {'contact': phone, 'email': email},
      'external': {
        'wallets': ['paytm'],
      },
    };
    razorpay
      ..on(Razorpay.EVENT_PAYMENT_ERROR, handlePaymentErrorResponse)
      ..on(Razorpay.EVENT_PAYMENT_SUCCESS, handlePaymentSuccessResponse)
      ..on(Razorpay.EVENT_EXTERNAL_WALLET, handleExternalWalletSelected)
      ..open(options);
  }

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    /*
    * PaymentFailureResponse contains three values:
    * 1. Error Code
    * 2. Error Description
    * 3. Metadata
    * */

    showAlertDialog(
      context,
      'Payment Failed',
      'Description: ${response.message}',
    );
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    /*
    * Payment Success Response contains three values:
    * 1. Order ID
    * 2. Payment ID
    * 3. Signature
    * */
    setState(() {
      buttonStatus = true;
    });
    context.read<WebinarDescriptionCubitCubit>().getverifyWebinarOrder(
          razorpay_order_id: response.orderId!,
          razorpay_payment_id: response.paymentId!,
          razorpay_signature: response.signature!,
          fullName: setname,
          phoneNumber: setphone,
          emailId: setemail,
        );
    logs(response.paymentId);
    logs(response.orderId);
    logs(response.signature);
    showThankYouDialog(context);
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    showAlertDialog(
      context,
      'Handle External wallet',
      '',
    );
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    final alert = AlertDialog(
      title: Row(
        children: [
          const Icon(
            Icons.cancel,
            color: Colors.red,
            size: 30,
          ),
          const SizedBox(width: 10),
          Text(title, style: const TextStyle(color: Colors.red)), // Title text
        ],
      ),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            getIt<AppRouter>().replaceAll(
              [const GuestWebinarsRoute()],
            );
          },
          child: const Text(
            'OK',
            style: TextStyle(color: Colors.red),
          ),
        ),
      ],
    );

    // ignore: inference_failure_on_function_invocation
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }

  void showThankYouDialog(BuildContext context) {
    // ignore: inference_failure_on_function_invocation
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: const Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.check_circle,
                color: Colors.green,
                size: 70,
              ),
              SizedBox(height: 10),
              Text(
                'Registered successfully!',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w400,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Details has been shared to your email',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
              ),
              onPressed: () {
                getIt<AppRouter>().replaceAll([const GuestSubHome()]);
              },
              child: const Text(
                'Home',
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: const [],
      ),
      body: BlocConsumer<WebinarDescriptionCubitCubit,
          WebinarDescriptionCubitState>(
        listener: (context, state) {
          if (state is WebinarsDescripitonOrderLoaded) {
            initiliseRazorPay(
              email: setemail,
              name: setname,
              phone: setphone,
              orderId: state.response.data!.id!,
            );
          }
        },
        builder: (blocContext, state) {
          if (state is ErrorState) {
            toast('Webinar Description data Not Found');
          }
          if (state is Loading) {
            return LoadingIndicator(
              // ignore: unnecessary_type_check
              show: state is Loading,
            );
          }
          if (state is webinarVerifyResponseLoaded) {
            buttonStatus = true;
          }
          if (state is WebinarsDescriptionLoaded) {
            final formatter = DateFormat('dd MMMM yyyy');
            final apiDateTimeString = state.response.data!.date.toString();
            final apiDateTime = DateTime.parse(apiDateTimeString);
            final formattedDateTime = formatter.format(apiDateTime);
            amount = state.response.data!.price!;
            log(state);
            return RefreshIndicator(
              onRefresh: _refreshData,
              color: Colors.amber,
              child: Stack(
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          height: 250.h,
                          width: double.infinity,
                          child: CustomVideoPlayer(
                            videoUrl: state.response.data!.webinarVideo!,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 4),
                          child: Text(
                            state.response.data!.webinarTitle!,
                            style: TextStyle(
                              color: const Color.fromRGBO(0, 0, 0, 1),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8, top: 6),
                          child: Text(
                            state.response.data!.expertName!,
                            style: TextStyle(
                              color: const Color.fromRGBO(15, 166, 84, 1),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 6),
                          child: Text(
                            state.response.data!.webinarDescription!,
                            style: TextStyle(
                              color: const Color.fromRGBO(124, 123, 123, 1),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 6),
                          child: Text(
                            'Webinar Will be on, $formattedDateTime.',
                            style: TextStyle(
                              color: const Color.fromARGB(255, 14, 13, 13),
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        CountdownPage(
                          // ignore: unnecessary_null_checks
                          targetDate: state.response.data!.date!,
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        const Center(
                          child: Text(
                            'Seats are filling fast, reserve yours NOW!',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: SizedBox(
                            width: double.infinity,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromRGBO(249, 209, 33, 1),
                              ),
                              onPressed: () {
                                final newformKey = GlobalKey<FormState>();
                                final nameFocusNode = FocusNode();
                                final emailFocusNode = FocusNode();
                                final phoneFocusNode = FocusNode();
                                // ignore: inference_failure_on_function_invocation
                                showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return LayoutBuilder(
                                      builder: (context, constraints) {
                                        return SingleChildScrollView(
                                          child: Container(
                                            constraints: BoxConstraints(
                                              maxHeight: constraints.maxHeight,
                                            ),
                                            color: Colors.transparent,
                                            child: DecoratedBox(
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                                borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(10),
                                                  topRight: Radius.circular(10),
                                                ),
                                              ),
                                              child: Form(
                                                key: newformKey,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: <Widget>[
                                                    const Padding(
                                                      padding:
                                                          EdgeInsets.all(16),
                                                      child: Text(
                                                        'Register for the Webinar',
                                                        style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 16,
                                                      ),
                                                      child: TextFormField(
                                                        controller:
                                                            _nameController,
                                                        focusNode:
                                                            nameFocusNode, // Set focus node
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText: 'Name',
                                                        ),
                                                        validator: (value) {
                                                          if (value!.isEmpty) {
                                                            return 'Please enter your Name';
                                                          }
                                                          return null;
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 16,
                                                      ),
                                                      child: TextFormField(
                                                        controller:
                                                            _emailController,
                                                        focusNode:
                                                            emailFocusNode, // Set focus node
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText: 'Email',
                                                        ),
                                                        validator: (value) {
                                                          if (value!.isEmpty) {
                                                            return 'Please enter an email address';
                                                          }

                                                          // Check for valid email format using a regular expression
                                                          final emailRegex =
                                                              RegExp(
                                                            r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                                          );
                                                          if (!emailRegex
                                                              .hasMatch(
                                                            value,
                                                          )) {
                                                            return 'Please enter a valid email address';
                                                          }

                                                          // Return null if the email is valid (no error)
                                                          return null;
                                                        },
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding: const EdgeInsets
                                                          .symmetric(
                                                        horizontal: 16,
                                                      ),
                                                      child: TextFormField(
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        controller:
                                                            _phoneController,
                                                        focusNode:
                                                            phoneFocusNode,
                                                        decoration:
                                                            const InputDecoration(
                                                          labelText: 'Phone',
                                                        ),
                                                        validator: (value) {
                                                          const indianPhoneRegex =
                                                              r'^[789]\d{9}$';
                                                          if (value!.isEmpty) {
                                                            return 'Please enter a phone number.';
                                                          } else if (!RegExp(
                                                            indianPhoneRegex,
                                                          ).hasMatch(
                                                            value,
                                                          )) {
                                                            return 'Please enter a valid 10-digit Indian phone number.';
                                                          }
                                                          return null; // Valid phone number
                                                        },
                                                      ),
                                                    ),
                                                    const SizedBox(height: 16),
                                                    CustomButton(
                                                      buttonText: 'Submit Now',
                                                      width: 600,
                                                      onPressed: () {
                                                        final name =
                                                            _nameController
                                                                .text;
                                                        final email =
                                                            _emailController
                                                                .text;
                                                        final phone =
                                                            _phoneController
                                                                .text;
                                                        setState(() {
                                                          setname = name;
                                                          setemail = email;
                                                          setphone = phone;
                                                          amount = state
                                                              .response
                                                              .data!
                                                              .price!;
                                                        });
                                                        if (newformKey
                                                            .currentState!
                                                            .validate()) {
                                                          final cubit =
                                                              blocContext.read<
                                                                  WebinarDescriptionCubitCubit>();
                                                          // ignore: cascade_invocations
                                                          cubit.getWebinarOrder(
                                                            userId: 'guest',
                                                            webinarId:
                                                                widget.id,
                                                            currency: 'INR',
                                                            amount: state
                                                                .response
                                                                .data!
                                                                .price!,
                                                          );
                                                          Navigator.of(context)
                                                              .pop();
                                                        }
                                                      },
                                                    ),
                                                    const SizedBox(height: 16),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                              child: const Text(
                                'Register for Webinar',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'The 90 minutes interactive session will cover:',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 6),
                          child: Text(
                            // state.response.data!.sessionwillCover!,
                            '',
                            style: TextStyle(
                              color: const Color.fromRGBO(124, 123, 123, 1),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'What you’ll learn in this exclusive session:',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 6),
                          child: Text(
                            state.response.data!.youwillLearn!.join(','),
                            style: TextStyle(
                              color: const Color.fromRGBO(124, 123, 123, 1),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'Who is it for?',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 10, top: 6),
                          child: Text(
                            state.response.data!.whoisitFor!.first,
                            style: TextStyle(
                              color: const Color.fromRGBO(124, 123, 123, 1),
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            'About Expert',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        ExpertCardWebinar(
                          expertData: state.response.data!,
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Center(
                          child: Text(
                            'Limited seats available, reserve yours NOW!',
                            style: TextStyle(
                              fontSize: 16,
                              color: Color.fromRGBO(0, 0, 0, 1),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromRGBO(249, 209, 33, 1),
                            ),
                            onPressed: () {
                              final newformKey = GlobalKey<FormState>();
                              final nameFocusNode = FocusNode();
                              final emailFocusNode = FocusNode();
                              final phoneFocusNode = FocusNode();
                              // ignore: inference_failure_on_function_invocation
                              showModalBottomSheet(
                                context: context,
                                builder: (context) {
                                  return LayoutBuilder(
                                    builder: (context, constraints) {
                                      return SingleChildScrollView(
                                        child: Container(
                                          constraints: BoxConstraints(
                                            maxHeight: constraints.maxHeight,
                                          ),
                                          color: Colors.transparent,
                                          child: DecoratedBox(
                                            decoration: const BoxDecoration(
                                              color: Colors.white,
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(10),
                                                topRight: Radius.circular(10),
                                              ),
                                            ),
                                            child: Form(
                                              key: newformKey,
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                children: <Widget>[
                                                  const Padding(
                                                    padding: EdgeInsets.all(16),
                                                    child: Text(
                                                      'Register for the Webinar',
                                                      style: TextStyle(
                                                        fontSize: 20,
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: Colors.black,
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 16,
                                                    ),
                                                    child: TextFormField(
                                                      controller:
                                                          _nameController,
                                                      focusNode:
                                                          nameFocusNode, // Set focus node
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Name',
                                                      ),
                                                      validator: (value) {
                                                        if (value!.isEmpty) {
                                                          return 'Please enter your Name';
                                                        }
                                                        return null;
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 16,
                                                    ),
                                                    child: TextFormField(
                                                      controller:
                                                          _emailController,
                                                      focusNode:
                                                          emailFocusNode, // Set focus node
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Email',
                                                      ),
                                                      validator: (value) {
                                                        if (value!.isEmpty) {
                                                          return 'Please enter an email address';
                                                        }

                                                        // Check for valid email format using a regular expression
                                                        final emailRegex =
                                                            RegExp(
                                                          r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                                        );
                                                        if (!emailRegex
                                                            .hasMatch(
                                                          value,
                                                        )) {
                                                          return 'Please enter a valid email address';
                                                        }

                                                        // Return null if the email is valid (no error)
                                                        return null;
                                                      },
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .symmetric(
                                                      horizontal: 16,
                                                    ),
                                                    child: TextFormField(
                                                      keyboardType:
                                                          TextInputType.number,
                                                      controller:
                                                          _phoneController,
                                                      focusNode: phoneFocusNode,
                                                      decoration:
                                                          const InputDecoration(
                                                        labelText: 'Phone',
                                                      ),
                                                      validator: (value) {
                                                        const indianPhoneRegex =
                                                            r'^[789]\d{9}$';
                                                        if (value!.isEmpty) {
                                                          return 'Please enter a phone number.';
                                                        } else if (!RegExp(
                                                          indianPhoneRegex,
                                                        ).hasMatch(
                                                          value,
                                                        )) {
                                                          return 'Please enter a valid 10-digit Indian phone number.';
                                                        }
                                                        return null; // Valid phone number
                                                      },
                                                    ),
                                                  ),
                                                  const SizedBox(height: 16),
                                                  CustomButton(
                                                    buttonText: 'Submit Now',
                                                    width: 600,
                                                    onPressed: () {
                                                      final name =
                                                          _nameController.text;
                                                      final email =
                                                          _emailController.text;
                                                      final phone =
                                                          _phoneController.text;
                                                      setState(() {
                                                        setname = name;
                                                        setemail = email;
                                                        setphone = phone;
                                                        amount = state.response
                                                            .data!.price!;
                                                      });
                                                      if (newformKey
                                                          .currentState!
                                                          .validate()) {
                                                        final cubit =
                                                            blocContext.read<
                                                                WebinarDescriptionCubitCubit>();
                                                        // ignore: cascade_invocations
                                                        cubit.getWebinarOrder(
                                                          userId: 'guest',
                                                          webinarId: widget.id,
                                                          currency: 'INR',
                                                          amount: state.response
                                                              .data!.price!,
                                                        );
                                                        Navigator.of(context)
                                                            .pop();
                                                      }
                                                    },
                                                  ),
                                                  const SizedBox(height: 16),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      );
                                    },
                                  );
                                },
                              );
                            },
                            child: const Text(
                              'Register for Webinar',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        // Center(
                        //   child: Text(
                        //     'Diabetes Reversal Experiences ',
                        //     style: TextStyle(
                        //       fontSize: 18.sp,
                        //       fontWeight: FontWeight.w500,
                        //       color: const Color.fromRGBO(0, 0, 0, 1),
                        //     ),
                        //   ),
                        // ),
                        Container(
                          color: const Color.fromRGBO(68, 68, 68, 1),
                          padding: const EdgeInsets.all(20),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.all(10),
                                child: Text(
                                  'We bring to you the best Wellness Experts, you can trust!',
                                  style: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 1),
                                    fontSize: 20,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10, right: 10),
                                // ignore:
                                child: Text(
                                  'Our goal is to create health awareness through our enriching content and help people reach their health goals through our world-class experts, tools, programs and products. Currently, we have started with online wellness programs.',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
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
            );
          }
          return const SizedBox.shrink();
        },
      ),
    );
  }
}
