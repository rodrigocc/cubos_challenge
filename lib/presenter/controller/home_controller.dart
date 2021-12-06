import 'package:challenge_cubos/data/fetch_image.dart';
import 'package:challenge_cubos/data/fetch_movie_usecase.dart';
import 'package:challenge_cubos/data/models/movie_list.dart';
import 'package:challenge_cubos/domain/usecases/fetch_image.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final FetchMovieUseCase movieUseCase;
  final FetchPosterPath imageUseCase;

  _HomeControllerBase(this.movieUseCase, this.imageUseCase);

  Future<List<MovieResults>> fetchMovieByGenrer(int genrerId) {
    return movieUseCase.fetchMovieByGenrer(genrerId);
  }

  String fetchImageCard(String posterPath) {
    return imageUseCase.fetchImageUrl(posterPath);
  }
}
