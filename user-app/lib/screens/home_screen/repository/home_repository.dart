import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/expert_response.dart';
import 'package:yellow_squash/models/get_updated_user.dart';
import 'package:yellow_squash/models/health_pedia_response.dart';
import 'package:yellow_squash/models/switch_profile_response.dart';
import 'package:yellow_squash/models/upcoming_program_response.dart';
import 'package:yellow_squash/models/webinar_response/webinar_response.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class HomeRepository {
  HomeRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//
  Future<ApiResult<ExpertResponse>> getExperts() async {
    try {
      final response = await _dioClient!.get(ApiEndPoints.kGetExpert);
      final dataResponse = ExpertResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<UpcomingProgramResponse>> getUpcomingWebinar() async {
    try {
      final response = await _dioClient!.get(ApiEndPoints.kGetWebinars);
      final dataResponse = UpcomingProgramResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<UpcomingProgramResponse>> getUpcomingProgram(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response = await _dioClient!
          .post(ApiEndPoints.kGetupcomingProgram, data: payload);
      final dataResponse = UpcomingProgramResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
 

 

  Future<ApiResult<HealthPediaResponse>> exploreHealthPedia() async {
    try {
      final response = await _dioClient!.get(ApiEndPoints.kGetHealthPedia);
      final dataResponse = HealthPediaResponse.fromJson(response.data);
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



  Future<ApiResult<SwitchProfileResponse>> getSwitchProfiledata(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response = await _dioClient!
          .post(ApiEndPoints.kgetmyProgramprofile, data: payload);
      final dataResponse = SwitchProfileResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
