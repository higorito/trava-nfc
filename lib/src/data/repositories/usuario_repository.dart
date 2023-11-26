import 'package:dio/dio.dart';

import '../models/usuario_model.dart';

class UsuarioRepository {
  final Dio _dio = Dio();

  Future<List<UsuarioModel>> fetchUsers() async {
    try {
      final response = await _dio.get(
          'https://api-eletric-lock-rlq4airfi-artur-fpcs-projects.vercel.app/mostrar_usuarios');

      if (response.statusCode == 200) {
        List<dynamic> data = response.data;
        List<UsuarioModel> userList =
            data.map((json) => UsuarioModel.fromJson(json)).toList();
        return userList;
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
