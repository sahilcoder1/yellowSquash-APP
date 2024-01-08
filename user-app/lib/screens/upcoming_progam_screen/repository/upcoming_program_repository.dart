// ProgramDescription
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/upcoming_program_description.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class UpcomingProgramRepository {
  UpcomingProgramRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<UpcomingProgramDescription>> getUpComingProgram(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response = await _dioClient!
          .post(ApiEndPoints.kGetupcomingProgram, data: payload);
      final dataResponse = UpcomingProgramDescription.fromJson(response.data);
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
}
