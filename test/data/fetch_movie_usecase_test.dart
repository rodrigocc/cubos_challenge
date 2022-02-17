import 'package:challenge_cubos/data/fetch_movie_usecase.dart';
import 'package:challenge_cubos/data/models/movie_list.dart';
import 'package:challenge_cubos/infra/dio_client.dart';
import 'package:challenge_cubos/infra/http_service_interface.dart';

import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/movie_genrerid_mock.dart';

class HttpClientMock extends Mock implements IHttpService {}

void main() {
  late HttpClientMock testHttpClient;
  late FetchMovieUseCase fetchMovieUseCase;

  setUp(() {
    testHttpClient = HttpClientMock();
    fetchMovieUseCase = FetchMovieUseCase(client: testHttpClient);
  });

  test('Should Return a ListMovieResults', () async {
    final fetchMovieUseCase = FetchMovieUseCase(client: DioClient());
    final response = await fetchMovieUseCase.fetchMovieByGenrer(tGenrerId);
    expect(response, isA<List<MovieResults>>());
  });
}
