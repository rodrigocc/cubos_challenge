import 'package:challenge_cubos/domain/entities/movie.dart';

abstract class FetchMovie {
  Future<List<Movie>> fetchMovieByGenrer(int genrerId);
  Future<List<Movie>> searchMovieByName(String name);
  Future<Movie> fetchMovieDetails(String id);
}
