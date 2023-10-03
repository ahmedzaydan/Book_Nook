import 'package:book_nook/core/utils/constants.dart';
import 'package:dio/dio.dart';

class ApiServiceClient {
  final Dio dio;
  ApiServiceClient(this.dio);

  Future<Map<String, dynamic>> get({
    required String endPoint,
  }) async {
    var response = await dio.get('${Constants.baseUrl}$endPoint');
    return response.data;
  }
}
