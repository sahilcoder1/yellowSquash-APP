// ProgramDescription
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:yellow_squash/constants/api_endpoints.dart';
import 'package:yellow_squash/models/expert_description_response.dart';
import 'package:yellow_squash/utils/configuraton/configuration.dart';
import 'package:yellow_squash/utils/logs.dart';
import 'package:yellow_squash/utils/networking/api_result.dart';
import 'package:yellow_squash/utils/networking/dio_client.dart';
import 'package:yellow_squash/utils/networking/network_exceptions.dart';

@lazySingleton
class ExpertDescriptionRepository {
  ExpertDescriptionRepository() {
    final dio = Dio();
    dio.options.headers = {
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': '*/*',
    };

    _dioClient = DioClient(getBaseUrl(), dio);
  }
  late DioClient? _dioClient;

  //===================================API ============================================//

//   Future<ApiResult<ExpertDescriptionResponse>> getExpertDescription(
//     String id,
//   ) async {
//     try {
//       final response =
//           await _dioClient!.get('${ApiEndPoints.kGetExpertbyId}$id');
//       final dataResponse = ExpertDescriptionResponse.fromJson(response.data);
//       return ApiResult.success(data: dataResponse);
//     } catch (e) {
//       logs(e.toString(), format: 'e');
//       return ApiResult.failure(error: NetworkExceptions.getDioException(e));
//     }
//   }
// }

  Future<ApiResult<ExpertDescriptionResponse>> getExpertDescription(
    Map<String, dynamic> payload,
  ) async {
    try {
      final response =
          await _dioClient!.post(ApiEndPoints.kGetExpertbyId, data: payload);
      final dataResponse = ExpertDescriptionResponse.fromJson(response.data);
      return ApiResult.success(data: dataResponse);
    } catch (e) {
      logs(e.toString(), format: 'e');
      return ApiResult.failure(error: NetworkExceptions.getDioException(e));
    }
  }
}
