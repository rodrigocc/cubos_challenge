import 'package:challenge_cubos/data/fetch_image.dart';
import 'package:challenge_cubos/data/fetch_movie_usecase.dart';
import 'package:challenge_cubos/data/models/movie_list.dart';
import 'package:challenge_cubos/presenter/controller/tab_model.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';

class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final FetchMovieUseCase movieUseCase;
  final FetchPosterPath imageUseCase;

  _HomeControllerBase({required this.movieUseCase, required this.imageUseCase});

  @observable
  List<MovieResults> movies = [];

  @observable
  int genrerId = 28;

  ObservableList<TabModel> movieGenrerList = [
    TabModel(true, 'Ação'),
    TabModel(false, 'Aventura'),
    TabModel(false, 'Fantasia'),
    TabModel(false, 'Comédia')
  ].asObservable();

  @action
  void changeGenrerTab(String genrerName) {
    switch (genrerName) {
      case 'Ação':
        genrerId = 28;
        break;

      case 'Aventura':
        genrerId = 12;
        break;
      case 'Fantasia':
        genrerId = 14;

        break;
      case 'Comédia':
        genrerId = 35;
        break;
      default:
    }
  }

  @action
  void setSelectedCardStatus(int index) {
    for (var element in movieGenrerList) {
      element.setSelectedStatus(false);
    }
    movieGenrerList[index].setSelectedStatus(true);
  }

  Future<List<MovieResults>> fetchMovieByGenrer(int genrerId) {
    return movieUseCase.fetchMovieByGenrer(genrerId);
  }

  @action
  Future<void> fetchMovies(int genrerId) async {
    final List<MovieResults> movies = await fetchMovieByGenrer(genrerId);

    this.movies = movies;
  }

  @action
  Future<void> searchMovies(String value, int genrerId) async {
    await fetchMovies(genrerId);
    final List<MovieResults> movies = this
        .movies
        .where((element) =>
            element.title!.toLowerCase().contains(value.toLowerCase()))
        .toList();

    this.movies = movies;
  }

  String fetchImageCard(String posterPath) {
    return imageUseCase.fetchImageUrl(posterPath);
  }
}
