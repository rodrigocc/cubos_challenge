import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HttpClient {
  final Dio dio;
  HttpClient()
      : dio = Dio(BaseOptions(
            headers: {'Authorization': "Bearer " + dotenv.get('ACESS_TOKEN')},
            baseUrl: dotenv.get('BASE_URL')));
}
