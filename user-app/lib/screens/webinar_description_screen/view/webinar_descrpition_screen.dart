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
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/webinars_description.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/webinar_description_screen/cubit/webinar_description_cubit_cubit.dart';
import 'package:yellow_squash/screens/webinar_description_screen/repository/webinar_description_repository.dart';
import 'package:yellow_squash/utils/common_widgets/countdown_page.dart';
import 'package:yellow_squash/utils/common_widgets/crashed.dart';
import 'package:yellow_squash/utils/common_widgets/expert_card_webinar.dart';
import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';
import 'package:yellow_squash/utils/common_widgets/videoPlayerWidget.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

@RoutePage()
class WebinarDescriptionScreen extends StatelessWidget {
  const WebinarDescriptionScreen({
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
  final user = StorageManager.getUserData();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  // final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);
  final getWebinarDescriptionDatas =
      List<WebinarDescriptionData>.empty(growable: true);

  String startDate = '';
  String setname = '';
  String setemail = '';
  String setphone = '';
  int amount = 0;
  bool isPurchased = false;
  bool buttonStatus = false;
  bool checkCrash = false;

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
    showAlertDialog(
      context,
      'Payment Failed',
      'Description: ${response.message}',
    );
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    context.read<WebinarDescriptionCubitCubit>().getverifyWebinarOrder(
          razorpay_order_id: response.orderId!,
          razorpay_payment_id: response.paymentId!,
          razorpay_signature: response.signature!,
          fullName: setname,
          phoneNumber: setphone,
          emailId: setemail,
        );
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
          Text(title, style: const TextStyle(color: Colors.red)),
        ],
      ),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            getIt<AppRouter>().replaceAll(
              [const WebinarsRoute()],
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

  @override
  void initState() {
    context
        .read<WebinarDescriptionCubitCubit>()
        .getWebinarsDescription(id: widget.id);
    super.initState();
  }

  String? url =
      'https://ysdbresouces.s3.ap-south-1.amazonaws.com/sp/The%20LCHF%20Lifestyle%20Program%20by%20Satyajit%20Dash%20%281%29%20%281%29.mp4';
  @override
  Widget build(BuildContext context) {
    _nameController.text = user!.fullName!;
    _emailController.text = user!.email!;
    _phoneController.text = user!.phone!;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {
            getIt<AppRouter>().pop();
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
            setState(() {
              checkCrash = true;
            });
          }
          if (state is Loading) {
            return const LoadingIndicator(
              show: true,
            );
          }
          if (state is webinarVerifyResponseLoaded) {
            buttonStatus = true;
          }
          // if (state is GetUpdatedUserLoaded) {
          //   getUpdatedUserData
          //     ..clear()
          //     ..add(state.response.data!);
          // }
          if (state is WebinarsDescriptionLoaded) {
            final formatter = DateFormat('dd MMMM yyyy');
            final apiDateTimeString = state.response.data!.date.toString();
            final apiDateTime = DateTime.parse(apiDateTimeString);
            final formattedDateTime = formatter.format(apiDateTime);
            startDate = formattedDateTime;
            amount = state.response.data!.price!;
            getWebinarDescriptionDatas
              ..clear()
              ..add(state.response.data!);
          }
          return checkCrash
              ? const crashedPage()
              : RefreshIndicator(
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
                                videoUrl:
                                    getWebinarDescriptionDatas[0].webinarVideo!,
                              ),
                            ),
                            SizedBox(
                              height: 10.h,
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 8, top: 4),
                              child: Text(
                                getWebinarDescriptionDatas[0].webinarTitle!,
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
                                getWebinarDescriptionDatas[0].expertName!,
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
                                getWebinarDescriptionDatas[0]
                                    .webinarDescription!,
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
                                'Webinar Will be on, $startDate.',
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
                              targetDate: getWebinarDescriptionDatas[0].date,
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
                                                  maxHeight:
                                                      constraints.maxHeight,
                                                ),
                                                color: Colors.transparent,
                                                child: DecoratedBox(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
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
                                                              EdgeInsets.all(
                                                            16,
                                                          ),
                                                          child: Text(
                                                            'Register for the Webinar',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
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
                                                              if (value!
                                                                  .isEmpty) {
                                                                return 'Please enter your Name';
                                                              }
                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
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
                                                              labelText:
                                                                  'Email',
                                                            ),
                                                            validator: (value) {
                                                              if (value!
                                                                  .isEmpty) {
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
                                                          padding:
                                                              const EdgeInsets
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
                                                              labelText:
                                                                  'Phone',
                                                            ),
                                                            validator: (value) {
                                                              const indianPhoneRegex =
                                                                  r'^[789]\d{9}$';
                                                              if (value!
                                                                  .isEmpty) {
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
                                                        const SizedBox(
                                                          height: 16,
                                                        ),
                                                        CustomButton(
                                                          buttonText:
                                                              'Submit Now',
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
                                                              amount =
                                                                  getWebinarDescriptionDatas[
                                                                          0]
                                                                      .price!;
                                                            });
                                                            if (newformKey
                                                                .currentState!
                                                                .validate()) {
                                                              final cubit =
                                                                  blocContext.read<
                                                                      WebinarDescriptionCubitCubit>();
                                                              // ignore: cascade_invocations
                                                              cubit
                                                                  .getWebinarOrder(
                                                                userId:
                                                                    user!.id!,
                                                                webinarId:
                                                                    widget.id,
                                                                currency: 'INR',
                                                                amount:
                                                                    getWebinarDescriptionDatas[
                                                                            0]
                                                                        .price!,
                                                              );
                                                              Navigator.of(
                                                                context,
                                                              ).pop();
                                                            }
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 16,
                                                        ),
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
                                getWebinarDescriptionDatas[0]
                                    .youwillLearn!
                                    .join(','),
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
                                getWebinarDescriptionDatas[0].whoisitFor!.first,
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
                              expertData: getWebinarDescriptionDatas[0],
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
                                                  maxHeight:
                                                      constraints.maxHeight,
                                                ),
                                                color: Colors.transparent,
                                                child: DecoratedBox(
                                                  decoration:
                                                      const BoxDecoration(
                                                    color: Colors.white,
                                                    borderRadius:
                                                        BorderRadius.only(
                                                      topLeft:
                                                          Radius.circular(10),
                                                      topRight:
                                                          Radius.circular(10),
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
                                                              EdgeInsets.all(
                                                            16,
                                                          ),
                                                          child: Text(
                                                            'Register for the Webinar',
                                                            style: TextStyle(
                                                              fontSize: 20,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .bold,
                                                              color:
                                                                  Colors.black,
                                                            ),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
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
                                                              if (value!
                                                                  .isEmpty) {
                                                                return 'Please enter your Name';
                                                              }
                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
                                                                  .symmetric(
                                                            horizontal: 16,
                                                          ),
                                                          child: TextFormField(
                                                            enabled: true,
                                                            controller:
                                                                _emailController,
                                                            onTap: () {},
                                                            focusNode:
                                                                emailFocusNode, // Set focus node
                                                            decoration:
                                                                const InputDecoration(
                                                              labelText:
                                                                  'Email',
                                                            ),
                                                            validator: (value) {
                                                              if (value!
                                                                  .isEmpty) {
                                                                return 'Please enter an email address';
                                                              }

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

                                                              return null;
                                                            },
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsets
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
                                                              labelText:
                                                                  'Phone',
                                                            ),
                                                            validator: (value) {
                                                              const indianPhoneRegex =
                                                                  r'^[789]\d{9}$';
                                                              if (value!
                                                                  .isEmpty) {
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
                                                        const SizedBox(
                                                          height: 16,
                                                        ),
                                                        CustomButton(
                                                          buttonText:
                                                              'Submit Now',
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
                                                              amount =
                                                                  getWebinarDescriptionDatas[
                                                                          0]
                                                                      .price!;
                                                            });
                                                            if (newformKey
                                                                .currentState!
                                                                .validate()) {
                                                              final cubit =
                                                                  blocContext.read<
                                                                      WebinarDescriptionCubitCubit>();
                                                              // ignore: cascade_invocations
                                                              cubit
                                                                  .getWebinarOrder(
                                                                userId:
                                                                    user!.id!,
                                                                webinarId:
                                                                    widget.id,
                                                                currency: 'INR',
                                                                amount:
                                                                    getWebinarDescriptionDatas[
                                                                            0]
                                                                        .price!,
                                                              );
                                                              Navigator.of(
                                                                context,
                                                              ).pop();
                                                            }
                                                          },
                                                        ),
                                                        const SizedBox(
                                                          height: 16,
                                                        ),
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
                            const SizedBox(
                              height: 30,
                            ),
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
                                    padding:
                                        EdgeInsets.only(left: 10, right: 10),
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
        },
      ),
    );
  }
}
