import 'dart:io';

import 'package:yellow_squash/constants/app_constants.dart';

mixin InputValidationMixin {
  String? otpValidator(String otp) {
    if (otp.isEmpty) {
      return AppStringConstants.errorEnterOtp;
    } else if (otp.length < 6) {
      return AppStringConstants.errorEnterValidOtp;
    } else {
      return null;
    }
  }

  String? userNameValidator(String userName) {
    if (userName.isEmpty) {
      return 'Please enter';
    }
    return null;
  }

  String? emptyValidator(String userName) {
    if (userName.isEmpty) {
      return AppStringConstants.errorEnterNumberEmail;
    }
    return null;
  }

  String? passwordValidator(String password) {
    if (password.isEmpty) {
      return AppStringConstants.errorInValidPass;
    }
    return null;
  }

  String? confirmValidator(String password, String confirmPassword) {
    if (confirmPassword.isEmpty) {
      return AppStringConstants.errorInValidPass;
    } else if (password != confirmPassword) {
      return AppStringConstants.errorInValidConfirmPass;
    }
    return null;
  }

  String? phoneNumberValidator(String number) {
    const pattern = r'(^(?:[+0]9)?[0-9]{10,12}$)';
    final regExp = RegExp(pattern);
    if (number.isEmpty) {
      return AppStringConstants.errorEnterNumber;
    } else if (number.length < 10) {
      return AppStringConstants.errorEnterValidNumber;
    } else if (number.length > 10) {
      return AppStringConstants.errorEnterValidNumber;
    } else if (!regExp.hasMatch(number)) {
      return AppStringConstants.errorEnterValidNumber;
    }
    return null;
  }
}

Future<bool> checkIfDataCanBeUploaded() async {
  try {
    final result = await InternetAddress.lookup('example.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      return true;
    } else {
      return false;
    }
  } on SocketException catch (_) {
    return false;
  }
}
