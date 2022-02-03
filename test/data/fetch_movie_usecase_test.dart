import 'package:challenge_cubos/data/fetch_movie_usecase.dart';
import 'package:challenge_cubos/infra/dio_client.dart';

import 'package:dio/native_imp.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

class HttpClientMock extends Mock implements DioForNative {}

void main() {
  test('Testar se a Requisição está funcionando', () async {
    final fetchMovieUseCase = FetchMovieUseCase(client: DioClient());
    final response = await fetchMovieUseCase.fetchMovieByGenrer(28);
    expect(response[0].title, 'Eternos');
  });
}
