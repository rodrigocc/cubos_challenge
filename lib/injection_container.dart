import 'package:challenge_cubos/data/fetch_image.dart';
import 'package:challenge_cubos/data/fetch_movie_usecase.dart';
import 'package:challenge_cubos/infra/dio_client.dart';
import 'package:challenge_cubos/infra/http_service_interface.dart';
import 'package:challenge_cubos/presenter/controller/home_controller.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> init() async {
  getIt.registerLazySingleton(
      () => HomeController(imageUseCase: getIt(), movieUseCase: getIt()));

  getIt.registerLazySingleton(() => FetchMovieUseCase(client: getIt()));
  getIt.registerSingleton<FetchPosterPath>(FetchPosterPath());
  getIt.registerLazySingleton<IHttpService>(() => DioClient());
}
