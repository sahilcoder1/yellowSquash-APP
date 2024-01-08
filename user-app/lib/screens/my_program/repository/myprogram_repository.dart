// ProgramDescription
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/my_program.dart';
import 'package:yellow_squash/models/user_profile_data.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class MyProgramRepository {
  MyProgramRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<MyProgram>> getMyProgram(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kgetmyProgram, data: payload);
      final dataResponse = MyProgram.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<UserProfileData>> getMyProgramProfile(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response = await _dioClient!
          .post(ApiEndPoints.kgetmyProgramprofile, data: payload);
      final dataResponse = UserProfileData.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
