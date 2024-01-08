// ignore_for_file: directives_ordering

import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/child_update_response.dart';
import 'package:yellow_squash/models/user_byprofile_userid.dart';
import 'package:yellow_squash/models/user_profile_update_second.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

import 'package:yellow_squash/models/get_updated_user.dart';

//update
@lazySingleton
class UserProfileRepository {
  UserProfileRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }

  late DioClient? _dioClient;

  Future<ApiResult<UserProfileUpdateSecond>> updateUserProfile(
    Map<String, dynamic> payload,
  ) async {
    final params = FormData.fromMap({
      'fullName': payload['fullName'],
      'email': payload['email'],
      'phone': payload['phone'],
      'userId': payload['userId'],
      'gender': payload['gender'],
      'age': payload['age'],
      'condition': jsonEncode(payload['condition']),
      'interests': jsonEncode(payload['interests']),
      'profilePicture': payload['profilePicture'] != null
          ? await MultipartFile.fromFile(
              payload['profilePicture'],
            )
          : null,
    });

    try {
      final response =
          await _dioClient!.put(ApiEndPoints.kUpdateUserProfile, data: params);

      final dataResponse = UserProfileUpdateSecond.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e, format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }

  Future<ApiResult<ChildUpdateResponse>> updateChildProfile(
    Map<String, dynamic> payload,
  ) async {
    final params = FormData.fromMap({
      'fullName': payload['fullName'],
      'email': payload['email'],
      'phone': payload['phone'],
      'gender': payload['gender'],
      'age': payload['age'],
      'userId': payload['userId'],
      'profileId': payload['profileId'],
      'address': jsonEncode(payload['address']),
      'condition': jsonEncode(payload['condition']),
      'interests': jsonEncode(payload['interests']),
      'image': payload['image'] != null
          ? await MultipartFile.fromFile(
              payload['image'],
            )
          : null, // Convert list to JSON
    });

    try {
      final response =
          await _dioClient!.put(ApiEndPoints.kUpdateChildProfile, data: params);

      final dataResponse = ChildUpdateResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e, format: 'e');
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

  Future<ApiResult<UserByprofileUserid>> getUserByProfile(
    String id,
    String profileId,
  ) async {
    try {
      final response = await _dioClient!
          .get('${ApiEndPoints.kgetUserByProfile}$id/$profileId');
      final dataResponse = UserByprofileUserid.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
