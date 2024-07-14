import 'package:multiple_result/multiple_result.dart';
import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../models/posts_model.dart';

abstract class PostRepository {
  Future<Result<List<PostModel>, FailureModel>> getPosts();
}
