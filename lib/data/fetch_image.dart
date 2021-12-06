import 'package:challenge_cubos/domain/usecases/fetch_image.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class FetchPosterPath implements FetchImageUseCase {
  @override
  String fetchImageUrl(String posterPath) {
    String apiPath = dotenv.get('IMAGE_URL');
    return apiPath + posterPath;
  }
}
