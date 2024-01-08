// ignore_for_file: cascade_invocations, lines_longer_than_80_chars, must_be_immutable, eol_at_end_of_file
import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:razorpay_flutter/razorpay_flutter.dart';
import 'package:yellow_squash/app/app_router.dart';
import 'package:yellow_squash/app/app_router.gr.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/program_payment_verified_payload_modal/address.dart'
    as paymentaddresss;
import 'package:yellow_squash/models/program_payment_verified_payload_modal/observer.dart'
    as paymentObserver;
import 'package:yellow_squash/models/program_payment_verified_payload_modal/observer1.dart'
    as paymentobserverone;
import 'package:yellow_squash/models/program_payment_verified_payload_modal/patient_detail.dart';
import 'package:yellow_squash/models/program_payment_verified_payload_modal/payer_details.dart';
import 'package:yellow_squash/models/program_payment_verified_payload_modal/program_payment_verified_payload_modal.dart';
import 'package:yellow_squash/modules/di.dart';
import 'package:yellow_squash/screens/payment_Screen/cubit/program_payment_cubit.dart';
import 'package:yellow_squash/screens/payment_Screen/repository/payment_repository.dart';

import 'package:yellow_squash/utils/common_widgets/loading_indicator.dart';
import 'package:yellow_squash/utils/common_widgets/mybutton.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/services/storage_manager.dart';

// ignore:
@RoutePage()
class CheckOutPageScreen extends StatelessWidget {
  CheckOutPageScreen({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.author,
    required this.patientDetail,
    required this.planSubtype,
    required this.programid,
    super.key,
  });
  final String imageUrl;
  final String title;
  int price;
  final String author;
  final String patientDetail;
  final String planSubtype;
  final String programid;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ProrgamOrderCubit(ProgramPaymentOrderRepository()),
      child: checkOutPageView(
        author: author,
        imageUrl: imageUrl,
        price: price,
        title: title,
        patientDetail: patientDetail,
        planSubtype: planSubtype,
        programid: programid,
      ),
    );
  }
}

// ignore: camel_case_types
class checkOutPageView extends StatefulWidget {
  checkOutPageView({
    required this.imageUrl,
    required this.title,
    required this.price,
    required this.author,
    required this.patientDetail,
    required this.planSubtype,
    required this.programid,
    super.key,
  });
  final String imageUrl;
  final String title;
  int price;
  final String author;
  final String patientDetail;
  final String planSubtype;
  final String programid;

  @override
  State<checkOutPageView> createState() => _checkOutPageViewState();
}

// ignore: camel_case_types
class _checkOutPageViewState extends State<checkOutPageView> {
  final List<TextEditingController> _nameControllers = [];
  final List<TextEditingController> _emailControllers = [];
  final List<TextEditingController> _phoneNumberControllers = [];
  final List<TextEditingController> _ageControllers = [];
  final List<String> genders = [];
  final List<TextEditingController> _addressControllers = [];
  final List<TextEditingController> _cityControllers = [];
  final List<TextEditingController> _pincodeControllers = [];
  final List<TextEditingController> _stateControllers = [];
  final List<TextEditingController> _countryControllers = [];
  int _formCount = 1;
  int payment = 0;
  int count = 0;
  int discounted = 0;
  int discountedPrice = 0;
  String selectedCountry = '';
  bool isChecked = false;
  void updateOtherFields() {
    if (isChecked) {
      _nameControllers[0].text = nameTextField.text;
      _emailControllers[0].text = emailTextField.text;
      _addressControllers[0].text = addressTextField.text;
      _phoneNumberControllers[0].text = phoneTextField.text;
      _stateControllers[0].text = stateTextField.text;
      _countryControllers[0].text = countryTextField.text;
      _cityControllers[0].text = cityTextField.text;
      _pincodeControllers[0].text = pinCode.text;
    } else {
      // ignore: avoid_dynamic_calls
      _nameControllers[0].text = '';
      _emailControllers[0].text = '';
      _addressControllers[0].text = '';
      _cityControllers[0].text = '';
      _phoneNumberControllers[0].text = '';
      _countryControllers[0].text = '';
      _stateControllers[0].text = '';
      _pincodeControllers[0].text = '';
    }
  }

  void _addForms(int count) {
    for (var i = 0; i < count; i++) {
      _nameControllers.add(TextEditingController());
      _emailControllers.add(TextEditingController());
      _phoneNumberControllers.add(TextEditingController());
      _ageControllers.add(TextEditingController());
      _addressControllers.add(TextEditingController());
      _cityControllers.add(TextEditingController());
      _pincodeControllers.add(TextEditingController());
      _stateControllers.add(TextEditingController());
      _countryControllers.add(TextEditingController());
    }
    setState(() {
      _formCount = count;
    });
  }

  final _newformKey = GlobalKey<FormState>();
  final _couponCodeKey = GlobalKey<FormState>();

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  List<int> selectedIndices = [];

  final getUpdatedUserData = List<getUpdatedData>.empty(growable: true);
  List<Widget> formWidgets = [];
  final user = StorageManager.getUserData();
  final emailTextField = TextEditingController();
  final phoneTextField = TextEditingController();
  final nameTextField = TextEditingController();
  final addressTextField = TextEditingController();
  final cityTextField = TextEditingController();
  final ageTextField = TextEditingController();
  final stateTextField = TextEditingController();
  final countryTextField = TextEditingController();
  final observerName = TextEditingController();
  final observerPhone = TextEditingController();
  final observerRelation = TextEditingController();
  final pinCode = TextEditingController();

  void handlePaymentErrorResponse(PaymentFailureResponse response) {
    /*
    * PaymentFailureResponse contains three values:
    * 1. Error Code
    * 2. Error Description
    * 3. Metadata
    * */
    logs(response);

    showAlertDialog(
      context,
      'Payment Failed',
      'Description: ${response.message}',
    );
  }

  void handlePaymentSuccessResponse(PaymentSuccessResponse response) {
    final partyDetailList = List<PatientDetailPayment>.empty(growable: true);
    for (var i = 0; i < _formCount; i++) {
      final data = PatientDetailPayment(
        fullName: _nameControllers[i].text,
        emailId: _emailControllers[i].text,
        phoneNumber: _phoneNumberControllers[i].text,
        age: int.parse(_ageControllers[i].text),
        gender: genders[i],
        image:
            'https://cdn3.vectorstock.com/i/1000x1000/30/97/flat-business-man-user-profile-avatar-icon-vector-4333097.jpg',
      );
      partyDetailList.add(data);
      logs(format: 'e', data);
    }
    final data = ProgramPaymentVerifiedPayloadModal(
      razorpayOrderId: response.orderId,
      razorpayPaymentId: response.paymentId,
      razorpaySignature: response.signature,
      planType: widget.patientDetail,
      planSubType: widget.planSubtype,
      payerDetails: PayerDetails(
        fullName: user!.fullName,
        emailId: user!.email,
        phoneNumber: user!.phone,
        address: paymentaddresss.Address(
          flatNoStreetName: addressTextField.text,
          cityTownDistrict: cityTextField.text,
          pincode: pinCode.text,
          state: stateTextField.text,
          country: countryTextField.text,
        ),
      ),
      patientDetails: partyDetailList,
      observer: paymentObserver.Observer(
        observer1: paymentobserverone.Observer1(
          fullName: observerName.text,
          phoneNumber: observerPhone.text,
          relation: observerRelation.text,
        ),
      ),
    );
    context.read<ProrgamOrderCubit>().getVerifiedProgramOrder(
          data,
        );
    getIt<AppRouter>().replaceAll([const PaymentThankyou()]);
  }

  void handleExternalWalletSelected(ExternalWalletResponse response) {
    showAlertDialog(
      context,
      'Handle External wallet',
      '',
    );
  }

  void initiliseRazorPay({
    required String name,
    required String orderId,
    String? email,
    String? phone,
  }) {
    try {
      final razorpay = Razorpay();
      final options = {
        'key': 'rzp_test_JHwkpCgrZ100a0',
        'amount': widget.price.toString(),
        'name': 'YellowSquash',
        'order_id': orderId,
        'description': '',
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
    } catch (e) {
      logs(format: 'e', e);
    }
  }

  void showAlertDialog(BuildContext context, String title, String message) {
    // ignore: unused_local_variable
    final Widget continueButton = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color.fromRGBO(
          249,
          209,
          33,
          1,
        ),
      ),
      child: const Text('Continue'),
      onPressed: () {
        getIt<AppRouter>().replaceAll([const HomeRoute()]);
      },
    );
    final alert = AlertDialog(
      title: Row(
        children: [
          const Icon(
            Icons.cancel,
            color: Colors.red,
            size: 30,
          ),
          const SizedBox(width: 10),
          Text(
            title,
            style: const TextStyle(color: Colors.red),
          ),
        ],
      ),
      content: Text(message),
      actions: [
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
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

  final couponCodeController = TextEditingController();

  @override
  void initState() {
    context.read<ProrgamOrderCubit>().getUpdatedProfile(id: user!.id!);
    super.initState();
    final aStr = widget.patientDetail.replaceAll(RegExp('[^0-9]'), '');
    if (aStr == '') {
      _formCount = 1;
    } else {
      _formCount = int.parse(aStr);
    }

    _addForms(_formCount);
    phoneTextField.text = user!.phone ?? '';
    nameTextField.text = user!.fullName ?? '';
    emailTextField.text = user!.email ?? '';
  }

  bool showDropdown = false;

  @override
  Widget build(BuildContext context) {
    logs(_formCount);
    final user = StorageManager.getUserData();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            getIt<AppRouter>().pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: const Text(
          'Checkout',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromRGBO(249, 209, 33, 1),
      ),
      body: BlocConsumer<ProrgamOrderCubit, ProgramPaymentState>(
        listener: (context, state) {
          if (state is ErrorState) {
            logs(format: 'e', state);
          }
          if (state is ProgramOrderLoaded) {
            payment = state.response.data!.amount!;

            initiliseRazorPay(
              name: user!.fullName!,
              orderId: state.response.data!.id!,
              phone: user.phone,
              email: user.email,
            );
          }

          if (state is GetUpdatedUserLoaded) {
            getUpdatedUserData.add(state.response.data!);
          }
          if (state is ProgramVerifyOrderLoaded) {
            logs(state.response.data);
          }
          if (state is GetDiscountCouponLoaded) {
            if (state.response.dicountedPrice != null && count == 0) {
              widget.price = state.response.dicountedPrice!;
              count++;
              toast('Coupon Applied');
            } else if (count > 0) {
              toast('Coupon Already Applied!');
            }
            logs(state.response, format: 'e');
            logs(count);
          }
        },
        builder: (context, state) {
          if (state is Loading) {
            return const LoadingIndicator(show: true);
          }
          return AbsorbPointer(
            absorbing: state is Loading,
            child: SingleChildScrollView(
              child: Form(
                key: _newformKey,
                child: Column(
                  children: [
                    Image.network(
                      widget.imageUrl,
                      height: 300.h,
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8),
                          child: Text(
                            widget.title,
                            style: TextStyle(
                              fontSize: 16.h,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 5.w,
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          'By ${widget.author}',
                          style: TextStyle(
                            fontSize: 16.h,
                            color: Colors.black,
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                      ],
                    ),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Color.fromRGBO(226, 226, 226, 1),
                          ),
                          bottom: BorderSide(
                            color: Color.fromRGBO(226, 226, 226, 1),
                          ),
                        ),
                      ),
                      child: Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showDropdown = !showDropdown;
                              });
                            },
                            child: ListTile(
                              title: const Text(
                                'Have a coupon Code?',
                                style: TextStyle(
                                  color: Color.fromRGBO(15, 166, 84, 1),
                                ),
                              ),
                              trailing: Icon(
                                showDropdown
                                    ? CupertinoIcons.chevron_down
                                    : CupertinoIcons.right_chevron,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          if (showDropdown)
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 16),
                              child: Form(
                                key: _couponCodeKey,
                                child: Column(
                                  children: [
                                    TextFormField(
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter a Coupon Code';
                                        }
                                        return null;
                                      },
                                      controller: couponCodeController,
                                      decoration: const InputDecoration(
                                        labelText: 'Coupon Code',
                                      ),
                                    ),
                                    const SizedBox(height: 16),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: Colors.yellow,
                                          ),
                                          onPressed: () {
                                            if (_couponCodeKey.currentState!
                                                .validate()) {
                                              if (count == 0) {
                                                context
                                                    .read<ProrgamOrderCubit>()
                                                    .getdiscountCoupon(
                                                      coupon:
                                                          couponCodeController
                                                              .text,
                                                      ProgramId:
                                                          widget.programid,
                                                      UserId: user!.id!,
                                                      amount: widget.price,
                                                    );
                                              } else {
                                                return toast(
                                                  'One coupon is Already Applied',
                                                );
                                              }
                                            }
                                          },
                                          child: const Text(
                                            'Apply',
                                            style: TextStyle(
                                              color: Colors.black,
                                            ),
                                          ),
                                        ),
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              showDropdown = false;
                                            });
                                          },
                                          child: const Text('Cancel'),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      color: const Color.fromRGBO(234, 234, 234, 1),
                      child: Padding(
                        padding: const EdgeInsets.all(8),
                        child: Text(
                          'Payer Details',
                          style: TextStyle(
                            fontSize: 16.sp,
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 8,
                        vertical: 16,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Full Name',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                controller: nameTextField,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                onTap: () {
                                  final currentText = TextEditingController(
                                    text: user!.fullName,
                                  );
                                  currentText.clear();
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your name';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Email Id',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    ' *',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                controller: emailTextField,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                onTap: () {
                                  final currentText =
                                      TextEditingController(text: user!.email);
                                  currentText.clear();
                                },
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter an email address';
                                  }
                                  final emailRegex = RegExp(
                                    r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                  );
                                  if (!emailRegex.hasMatch(value)) {
                                    return 'Please enter a valid email address';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Phone Number',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              TextFormField(
                                enabled: false,
                                readOnly: true,
                                controller: phoneTextField,
                                keyboardType: TextInputType.number,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Row(
                                children: [
                                  Text(
                                    'Address',
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                    ),
                                  ),
                                  Text(
                                    ' *',
                                    style: TextStyle(
                                      color: Colors.red,
                                    ),
                                  ),
                                ],
                              ),
                              const SizedBox(
                                height: 8,
                              ),
                              const Text(
                                'Flat No./ Street Name',
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),

                              const SizedBox(
                                height: 8,
                              ), // Add some space between the text and the text field
                              TextFormField(
                                controller: addressTextField,
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                ),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your address';
                                  }
                                  return null;
                                },
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 170.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'City Town/District',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          ' *',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TextFormField(
                                      controller: cityTextField,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your City Town / District';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40.w,
                              ),
                              SizedBox(
                                width: 170.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Pincode',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          ' *',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TextFormField(
                                      controller: pinCode,
                                      keyboardType: TextInputType.number,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your pincode';
                                        }
                                        if (value.length < 6) {
                                          return 'Please enter a valid pincode';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Row(
                            children: [
                              SizedBox(
                                width: 170.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'State',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          ' *',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ),
                                    TextFormField(
                                      controller: stateTextField,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your state';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                              SizedBox(
                                width: 40.w,
                              ),
                              SizedBox(
                                width: 170.w,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Row(
                                      children: [
                                        Text(
                                          'Country',
                                          style: TextStyle(
                                            color: Colors.grey,
                                          ),
                                        ),
                                        Text(
                                          ' *',
                                          style: TextStyle(
                                            color: Colors.red,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: 8,
                                    ), // Add some space between the label and the text field
                                    TextFormField(
                                      controller: countryTextField,
                                      decoration: const InputDecoration(
                                        border: OutlineInputBorder(),
                                      ),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your Country';
                                        }
                                        return null;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          if (getUpdatedUserData[0].patientDetails!.isNotEmpty)
                            Padding(
                              padding: const EdgeInsets.all(15),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  if (getUpdatedUserData[0]
                                      .patientDetails!
                                      .isNotEmpty)
                                    const Text(
                                      "Want to purchase for existing patient's?",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    )
                                  else
                                    const Text(''),
                                  SizedBox(
                                    height: 150,
                                    child: ListView.builder(
                                      itemCount: getUpdatedUserData.isNotEmpty
                                          ? getUpdatedUserData[0]
                                              .patientDetails!
                                              .length
                                          : 0,
                                      itemBuilder: (context, index) {
                                        final patientDetail =
                                            getUpdatedUserData[0]
                                                .patientDetails![index];
                                        final isSelected =
                                            selectedIndices.contains(index);
                                        return Row(
                                          children: [
                                            Checkbox(
                                              activeColor: const Color.fromRGBO(
                                                249,
                                                209,
                                                33,
                                                1,
                                              ),
                                              checkColor: Colors.black,
                                              value: isSelected,
                                              onChanged: (value) {
                                                setState(() {
                                                  if (value == true) {
                                                    selectedIndices.add(index);
                                                    _formCount = _formCount - 1;
                                                  } else {
                                                    selectedIndices
                                                        .remove(index);
                                                    _formCount = _formCount + 1;
                                                  }
                                                });
                                              },
                                            ),
                                            Text(
                                              patientDetail.fullName!,
                                              style: TextStyle(
                                                color: Colors.black,
                                                fontSize: 16.sp,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          Text(
                            'Please note that the above information will be used to generate the invoice.',
                            style: TextStyle(
                              fontSize: 16.sp,
                              color: const Color.fromRGBO(108, 108, 108, 1),
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          SizedBox(
                            height: 20.h,
                          ),
                          Text(
                            'Your selected plan is ${widget.patientDetail}',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          if (_formCount != 0)
                            Text(
                              'Fill in the patients detail.',
                              style: TextStyle(
                                color: Colors.grey,
                                fontSize: 18.sp,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          SizedBox(
                            height: 10.h,
                          ),
                          if (_formCount != 0)
                            Row(
                              children: [
                                Checkbox(
                                  activeColor:
                                      const Color.fromRGBO(249, 209, 33, 1),
                                  checkColor: Colors.black,
                                  value: isChecked,
                                  onChanged: (value) {
                                    setState(() {
                                      isChecked = value!;
                                      updateOtherFields();
                                    });
                                  },
                                ),
                                Text(
                                  'Buying for myself.',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 16.sp,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          SingleChildScrollView(
                            child: Column(
                              children: List.generate(_formCount, (index) {
                                formKey = GlobalKey<FormState>();
                                return Form(
                                  key: formKey,
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'Patient Detail ${index + 1}',
                                        style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 16.sp,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Row(
                                            children: [
                                              Text(
                                                'Name',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                ' *',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ), // Add some space between the label and the text field
                                          TextFormField(
                                            controller: _nameControllers[index],
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter your name';
                                              }
                                              return null;
                                            },
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Row(
                                            children: [
                                              Text(
                                                'Email',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                ' *',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ), // Add some space between the label and the text field
                                          TextFormField(
                                            controller:
                                                _emailControllers[index],
                                            keyboardType:
                                                TextInputType.emailAddress,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter an email address';
                                              }
                                              final emailRegex = RegExp(
                                                r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$',
                                              );
                                              if (!emailRegex.hasMatch(value)) {
                                                return 'Please enter a valid email address';
                                              }
                                              return null;
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 8,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Row(
                                            children: [
                                              Text(
                                                'Phone Number',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                ' *',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),

                                          const SizedBox(
                                            height: 8,
                                          ), // Add some space between the text and the text field
                                          TextFormField(
                                            controller:
                                                _phoneNumberControllers[index],
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 10.h,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Row(
                                            children: [
                                              Text(
                                                'Age',
                                                style: TextStyle(
                                                  fontWeight: FontWeight.bold,
                                                  fontSize: 16,
                                                ),
                                              ),
                                              Text(
                                                ' *',
                                                style: TextStyle(
                                                  color: Colors.red,
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(
                                            height: 8,
                                          ), // Add some space between the label and the text field
                                          TextFormField(
                                            controller: _ageControllers[index],
                                            keyboardType: TextInputType.number,
                                            decoration: const InputDecoration(
                                              border: OutlineInputBorder(),
                                            ),
                                            validator: (value) {
                                              if (value!.isEmpty) {
                                                return 'Please enter your age';
                                              }
                                              final age = int.tryParse(value);
                                              if (age == null ||
                                                  age < 0 ||
                                                  age > 98) {
                                                return 'Age must be between 0 and 98';
                                              }
                                              return null;
                                            },
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ),
                                      const Row(
                                        children: [
                                          Text(
                                            'Gender',
                                            style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16,
                                            ),
                                          ),
                                          Text(
                                            ' *',
                                            style: TextStyle(
                                              color: Colors.red,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 12,
                                      ), // A
                                      SizedBox(
                                        width: double.infinity,
                                        child: DropdownButtonFormField<String>(
                                          decoration: const InputDecoration(
                                            hintText: 'Male',
                                            border: OutlineInputBorder(),
                                          ),
                                          value: 'Male',
                                          items: const [
                                            DropdownMenuItem<String>(
                                              value: 'Male',
                                              child: Text('Male'),
                                            ),
                                            DropdownMenuItem<String>(
                                              value: 'Female',
                                              child: Text('Female'),
                                            ),
                                            DropdownMenuItem<String>(
                                              value: 'Other',
                                              child: Text('Other'),
                                            ),
                                          ],
                                          onChanged: (value) {
                                            genders.add(value!);
                                          },
                                        ),
                                      ),
                                      SizedBox(
                                        height: 20.h,
                                      ),
                                    ],
                                  ),
                                );
                              }),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Container(
                            width: double.infinity,
                            color: const Color.fromRGBO(234, 234, 234, 1),
                            child: Padding(
                              padding: const EdgeInsets.all(8),
                              child: Text(
                                'Bill Details',
                                style: TextStyle(
                                  fontSize: 16.sp,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Text(
                            'Total Price',
                          ),
                          Text(
                            '₹${widget.price}',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 14.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.h),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      ),
                    ),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Color.fromRGBO(226, 226, 226, 1),
                          ),
                          bottom: BorderSide(
                            color: Color.fromRGBO(226, 226, 226, 1),
                          ),
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          'Discount',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          '₹${widget.price}',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(15, 166, 84, 1),
                          ),
                        ),
                      ),
                    ),
                    DecoratedBox(
                      decoration: const BoxDecoration(
                        border: Border(
                          top: BorderSide(
                            color: Color.fromRGBO(226, 226, 226, 1),
                          ),
                          bottom: BorderSide(
                            color: Color.fromRGBO(226, 226, 226, 1),
                          ),
                        ),
                      ),
                      child: ListTile(
                        title: Text(
                          'Grand Total',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Text(
                          '₹${widget.price}',
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromRGBO(15, 166, 84, 1),
                          ),
                        ),
                      ),
                    ),
                    CustomButton(
                      buttonText: 'Submit Now',
                      width: 600,
                      onPressed: () {
                        // ignore:
                        if (_newformKey.currentState!.validate() &&
                            formKey.currentState!.validate()) {
                          context.read<ProrgamOrderCubit>().getProgramOrder(
                                amount: widget.price,
                                couponCode: couponCodeController.text,
                                currency: 'INR',
                                planSubType: widget.planSubtype,
                                planType: widget.patientDetail,
                                programId: widget.programid,
                                userId: user!.id,
                              );
                        }
                      },
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
