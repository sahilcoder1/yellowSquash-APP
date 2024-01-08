import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpInputWidget extends StatelessWidget {
  OtpInputWidget({required this.onSubmit, required this.controller, super.key});
  final void Function(String value) onSubmit;
  final TextEditingController controller;

  ///
  static final GlobalKey otpFormKey = GlobalKey<FormState>();
  final focusNode = FocusNode();

  ///
  @override
  Widget build(BuildContext context) {
    const borderColor = Color.fromRGBO(23, 171, 144, 0.4);

    const defaultPinTheme = PinTheme(
      width: 56,
      height: 56,
      textStyle: TextStyle(
        fontSize: 22,
        color: Colors.black,
      ),
      decoration: BoxDecoration(),
    );

    final cursor = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: borderColor,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );

    final preFilledWidget = Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          width: 56,
          height: 3,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(8),
          ),
        ),
      ],
    );
    return Row(
      children: [
        Flexible(
          flex: 10,
          child: Form(
            key: otpFormKey,
            child: Pinput(
              length: 6,
              controller: controller,
              focusNode: focusNode,
              androidSmsAutofillMethod:
                  AndroidSmsAutofillMethod.smsUserConsentApi,
              listenForMultipleSmsOnAndroid: true,
              defaultPinTheme: defaultPinTheme,
              onSubmitted: onSubmit,
              hapticFeedbackType: HapticFeedbackType.lightImpact,
              cursor: cursor,
              preFilledWidget: preFilledWidget,
            ),
          ),
        ),
      ],
    );
  }
}
