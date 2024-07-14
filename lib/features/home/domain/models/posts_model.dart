import 'package:freezed_annotation/freezed_annotation.dart';

part 'posts_model.freezed.dart';
part 'posts_model.g.dart';

@freezed
abstract class PostModel with _$PostModel {
  factory PostModel({
    @Default(0) int userId,
    @Default(0) int id,
    @Default("") String title,
    @Default("") String body,
  }) = _PostModel;
  factory PostModel.fromJson(Map<String, dynamic> json) =>
      _$PostModelFromJson(json);
}
