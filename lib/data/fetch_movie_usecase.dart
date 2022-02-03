import 'package:challenge_cubos/data/models/movie_list.dart';
import 'package:challenge_cubos/domain/entities/movie.dart';
import 'package:challenge_cubos/domain/usecases/fetch_movie_usecase.dart';
import 'package:challenge_cubos/infra/http_service_interface.dart';

class FetchMovieUseCase implements FetchMovie {
  final IHttpService client;

  const FetchMovieUseCase({required this.client});

  @override
  Future<List<MovieResults>> fetchMovieByGenrer(int genrerId) async {
    final response = await client
        .get('/discover/movie?page=1&with_genres=$genrerId&language=pt-BR');

    var movie = MovieList.fromJson(response);
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



// class HttpRequests {
//   Future<List<Pokemon>> fetchPokemonData() async {
//     final response = await http.get(Uri.parse(
//         'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json'));

//     if (response.statusCode == 200) {
//       List pokemon;
//       var json = jsonDecode(response.body);
//       pokemon = json['pokemon'];
//       final rawPokemon = List.from((pokemon));

//       Pokemon mapRawPokemon(dynamic rawPokemon) {
//         return Pokemon.fromJson(pokemon);
//       }

//       return rawPokemon.map(mapRawPokemon).toList();
//     } else {
//       throw Exception('Failed to load pokemon data');
//     }
//   }
// }
