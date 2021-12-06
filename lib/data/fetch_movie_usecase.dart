import 'package:challenge_cubos/data/models/movie_list.dart';
import 'package:challenge_cubos/domain/entities/movie.dart';
import 'package:challenge_cubos/domain/usecases/fetch_movie_usecase.dart';
import 'package:challenge_cubos/infra/http_client.dart';

class FetchMovieUseCase implements FetchMovie {
  final HttpClient client;

  FetchMovieUseCase() : client = HttpClient();

  @override
  Future<List<MovieResults>> fetchMovieByGenrer(int genrerId) async {
    final response = await client.dio
        .get('/discover/movie?page=1&with_genres=$genrerId&language=pt-BR');

    var movie = MovieList.fromJson(response.data);
    return movie.results!;
  }

  @override
  Future<Movie> fetchMovieDetails(String id) {
    throw UnimplementedError();
  }

  @override
  Future<List<Movie>> searchMovieByName(String name) {
    throw UnimplementedError();
  }
}
