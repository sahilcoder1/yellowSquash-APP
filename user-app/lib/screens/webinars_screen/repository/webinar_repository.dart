import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/webinar_response/webinar_response.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class WebinarRepository {
  WebinarRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }

  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<WebinarResponse>> getWebinars() async {
    try {
      final response = await _dioClient!.get(ApiEndPoints.kGetWebinars);
      final dataResponse = WebinarResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e, format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
