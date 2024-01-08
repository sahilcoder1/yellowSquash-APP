// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/favourite_get_response.dart';
import 'package:yellow_squash/models/favourite_post_response.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class favouriteRepository {
  favouriteRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }

  late DioClient? _dioClient;

  //===================================API ============================================//
  Future<ApiResult<FavouritePostResponse>> makefav(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kmakeFav, data: payload);
      final dataResponse = FavouritePostResponse.fromJson(response.data);
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
}
