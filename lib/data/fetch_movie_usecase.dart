import 'package:challenge_cubos/data/models/genrer_list.dart';
import 'package:challenge_cubos/data/models/movie_list.dart';
import 'package:challenge_cubos/domain/entities/movie.dart';
import 'package:challenge_cubos/domain/usecases/fetch_movie_usecase.dart';
import 'package:challenge_cubos/infra/http_service_interface.dart';

class FetchMovieUseCase implements IFetchMovieUseCase {
  final IHttpService client;

  const FetchMovieUseCase({required this.client});

  @override
  Future<List<MovieResults>> fetchMovieByGenrer(int genrerId) async {
    final response = await client
        .get('/discover/movie?page=1&with_genres=$genrerId&language=pt-BR');

    var movie = MovieList.fromJson(response);
    return movie.results!;
  }

  Future<List<Genres>> fetchGenrerList() async {
    final response = await client.get('/genre/movie/list?language=pt-BR');
    var genrerList = GenrerList.fromJson(response);
    return genrerList.genres!;
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
