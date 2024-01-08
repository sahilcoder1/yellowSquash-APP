// ProgramDescription
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/comment_get_response.dart';
import 'package:yellow_squash/models/comment_post_response.dart';
import 'package:yellow_squash/models/health_pedia_description_loaded.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class HealthDescriptionRespository {
  HealthDescriptionRespository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<HealthPediaDescriptionLoaded>> getHealthDescription(
    String slug,
  ) async {
    try {
      final response =
          await _dioClient!.get('${ApiEndPoints.kGetHealthbyId}$slug');
      final dataResponse =
          HealthPediaDescriptionLoaded.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<CommentGetResponse>> getComment(
    String userId,
  ) async {
    try {
      final response =
          await _dioClient!.get('${ApiEndPoints.kgetcomment}$userId');
      final dataResponse = CommentGetResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<CommentPostResponse>> makeComment(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kmakecomment, data: payload);
      final dataResponse = CommentPostResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
