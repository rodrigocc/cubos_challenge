import 'package:challenge_cubos/data/models/movie_list.dart';
import 'package:challenge_cubos/domain/entities/movie.dart';

abstract class FetchMovie {
  Future<List<MovieResults>> fetchMovieByGenrer(int genrerId);
  Future<List<Movie>> searchMovieByName(String name);
  Future<Movie> fetchMovieDetails(String id);
}
