import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import '../../../../../core/constants/constants.dart';
import '../../../../../core/constants/endpoints.dart';
import '../../../domain/models/posts_model.dart';
part 'home_api.g.dart';

@RestApi(baseUrl: Endpoints.POSTS)
abstract class HomeServiceClient {
  factory HomeServiceClient(Dio dio, {String baseUrl}) = _HomeServiceClient;

  @GET("")
  Future<HttpResponse<List<PostModel>>> getPosts();
}
