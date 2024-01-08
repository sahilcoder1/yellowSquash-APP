import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/forget_user_response.dart';
import 'package:yellow_squash/models/otp_response.dart';
import 'package:yellow_squash/models/user_response.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class LoginRepository {
  LoginRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<OtpResponse>> sendOtp(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kSendOTP, data: payload);
      final dataResponse = OtpResponse.fromJson(response.data);
      if (response.statusCode == 200) {
        return ApiResult.success(data: dataResponse);
      }
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(dataResponse.message),
      );
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<OtpResponse>> forgetSentOtp(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kforgot, data: payload);
      final dataResponse = OtpResponse.fromJson(response.data);
      if (response.statusCode == 200) {
        return ApiResult.success(data: dataResponse);
      }
      return ApiResult.failure(
        error: NetworkExceptions.getDioException(dataResponse.message),
      );
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<String>> verifyOtp(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kVerfiyOTP, data: payload);

      if (response.statusCode == 200) {
        return const ApiResult.success(data: 'Otp Verfiy Success');
      } else if (response.statusCode == 401) {
        return const ApiResult.success(data: 'Invalid OTP');
      }
      return const ApiResult.success(data: 'Something went wrong');
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<ForgetUserResponse>> forgetVerifyOtp(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kVerifyForgetOtp, data: payload);

      final dataResponse = ForgetUserResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<UserResponse>> registerUser(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kRegister, data: payload);

      final dataResponse = UserResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e, format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<UserResponse>> loginUser(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.klogin, data: payload);
      final dataResponse = UserResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e, format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<String>> forgetUser(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.put(ApiEndPoints.kupdateuser, data: payload);

      if (response.statusCode == 200) {
        return const ApiResult.success(data: 'Success!');
      }
      // ignore: only_throw_errors
      throw 'Something went wrong';
    } catch (e) {
      logs(e, format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
