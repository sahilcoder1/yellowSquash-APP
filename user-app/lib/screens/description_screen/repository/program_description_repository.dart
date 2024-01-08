// ProgramDescription
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/program_duration_discount_response.dart';
import 'package:yellow_squash/models/programs_description_response.dart';
import 'package:yellow_squash/models/reviews_response.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class ProgramDescriptionRepository {
  ProgramDescriptionRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<ProgramsDescriptionResponse>> getProgramsDescription(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response = await _dioClient!
          .post(ApiEndPoints.kGetProgrambyIdandUserId, data: payload);
      final dataResponse = ProgramsDescriptionResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<ProgramDurationDiscountResponse>> getProgramDurationAndPrice(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response = await _dioClient!
          .post(ApiEndPoints.kprogramdurationPrice, data: payload);
      final dataResponse =
          ProgramDurationDiscountResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
    Future<ApiResult<ReviewsResponse>> getReviews(String Programid) async {
    try {
      final response =
          await _dioClient!.get('${ApiEndPoints.kgetReviews}$Programid');
      final dataResponse = ReviewsResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}


