import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/discount_response.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/program_order_response.dart';
import 'package:yellow_squash/models/program_payment_verified_payload_modal/program_payment_verified_payload_modal.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class ProgramPaymentOrderRepository {
  ProgramPaymentOrderRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<ProgramOrderResponse>> getProgramOrder(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kgetProgramOrder, data: payload);
      final dataResponse = ProgramOrderResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<dynamic>> getVerifyProgramOrder(
    ProgramPaymentVerifiedPayloadModal data,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kgetProgramVerify, data: data);
      final dataResponse = ProgramOrderResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

// ignore: lines_longer_than_80_chars, non_constant_identifier_names
  Future<ApiResult<DiscountResponse>> getdiscountCoupon(
    String coupon,
    // ignore: non_constant_identifier_names
    String ProgramId,
    // ignore: non_constant_identifier_names
    String UserId,
    int amount,
  ) async {
    try {
      final response = await _dioClient!
          .get('${ApiEndPoints.kgetCoupon}$coupon/$ProgramId/$UserId/$amount');
      final dataResponse = DiscountResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
   Future<ApiResult<GetUpdatedUser>> getupdatedProfileUser(String id) async {
    try {
      final response =
          await _dioClient!.get('${ApiEndPoints.kgetUserProifile}$id');
      final dataResponse = GetUpdatedUser.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}


