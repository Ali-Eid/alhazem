import 'package:multiple_result/src/result.dart';

import '../../../../core/bases/models/failure_model/failure_model.dart';
import '../../../../core/bases/usecases/base_usecase.dart';
import '../models/posts_model.dart';
import '../repositories/post_repository.dart';

class PostUsecase extends BaseUseCaseEmptyInput<List<PostModel>> {
  final PostRepository postRepository;

  PostUsecase({required this.postRepository});
  @override
  Future<Result<List<PostModel>, FailureModel>> execute() async {
    return await postRepository.getPosts();
  }
}
