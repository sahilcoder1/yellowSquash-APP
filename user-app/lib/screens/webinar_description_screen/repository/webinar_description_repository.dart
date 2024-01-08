// ProgramDescription
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/webinar_order_response.dart';
import 'package:yellow_squash/models/webinar_verify_response.dart';
import 'package:yellow_squash/models/webinars_description.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class WebinarDescriptionRepository {
  WebinarDescriptionRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<WebinarsDescription>> getWebinarsDescription(
    String id,
  ) async {
    try {
      final response =
          await _dioClient!.get('${ApiEndPoints.kGetWebinarsbyId}$id');
      final dataResponse = WebinarsDescription.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<WebinarOrderResponse>> getWebinarOrder(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kWebinarOrder, data: payload);
      final dataResponse = WebinarOrderResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<WebinarVerifyResponse>> getverifyWebinarOrder(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kpaymentVerify, data: payload);
      final dataResponse = WebinarVerifyResponse.fromJson(response.data);
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
