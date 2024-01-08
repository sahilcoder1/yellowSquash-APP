// ignore_for_file: always_use_package_imports, eol_at_end_of_file, non_constant_identifier_names, lines_longer_than_80_chars

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/programs_response.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

import '../../../models/favourite_get_response.dart';
import '../../../models/get_updated_user.dart';
import '../../../models/switch_profile_response.dart';

@lazySingleton
class ProgramRepository {
  ProgramRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }

  late DioClient? _dioClient;

  //===================================API ============================================//

  Future<ApiResult<ProgramsResponse>> getPrograms() async {
    try {
      final response = await _dioClient!.get(ApiEndPoints.kGetPrograms);
      final dataResponse = ProgramsResponse.fromJson(response.data);
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
    Future<ApiResult<FavouriteGetResponse>> getFav(
    String UserId,
  ) async {
    try {
      final response = await _dioClient!.get('${ApiEndPoints.kgetFav}$UserId');
      final dataResponse = FavouriteGetResponse.fromJson(response.data);
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



