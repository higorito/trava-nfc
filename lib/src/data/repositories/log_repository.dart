import 'package:dio/dio.dart';
import '../models/log_model.dart';

class LogsRepository {
  final Dio _dio = Dio();

  Future<List<LogsModel>> fetchLogs() async {
    try {
      final response = await _dio.get(
          'https://api-eletric-lock-rlq4airfi-artur-fpcs-projects.vercel.app/mostrar_logs');

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        List<LogsModel> logsList =
            data.map((json) => LogsModel.fromJson(json)).toList();
        return logsList;
      } else {
        throw DioException(
          requestOptions: RequestOptions(path: ''),
          response: Response(
            statusCode: response.statusCode,
            statusMessage: response.statusMessage,
            data: response.data,
            requestOptions: RequestOptions(path: ''),
          ),
        );
      }
    } catch (error) {
      rethrow;
    }
  }
}
