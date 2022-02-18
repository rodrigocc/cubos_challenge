import 'package:challenge_cubos/data/errors/exceptions.dart';
import 'package:challenge_cubos/infra/http_service_interface.dart';
import 'package:dio/dio.dart';
// import 'package:flutter_dotenv/flutter_dotenv.dart';

class DioClient implements IHttpService {
  static const acessToken =
      'eyJhbGciOiJIUzI1NiJ9.eyJhdWQiOiI0YjE1OTc1YmFiYWNlYjZmMjRjOGQ1ZDRlMzIxNzRiYiIsInN1YiI6IjYxYWQxNDBmNTc1MzBlMDAxYTE1YmNiMyIsInNjb3BlcyI6WyJhcGlfcmVhZCJdLCJ2ZXJzaW9uIjoxfQ.0TP-MZwRDu26bQJBS9h3f96Zq_M-9HQtlCWb2C43wa8';
  static const baseUrl = 'https://api.themoviedb.org/3';

  final Dio dio;
  DioClient()
      : dio = Dio(BaseOptions(
            headers: {'Authorization': "Bearer " + acessToken},
            baseUrl: baseUrl));

  @override
  Future<dynamic> get(String url) async {
    final response = await dio.get(url);
    if (response.statusCode == 200) {
      return response.data;
    } else {
      throw ServerException();
    }
  }
}
// dotenv.get('ACESS_TOKEN')
// dotenv.get('BASE_URL')