import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_model.freezed.dart';
part 'input_model.g.dart';

@freezed
abstract class LoginInputModel with _$LoginInputModel {
  factory LoginInputModel({
    required String email,
    required String password,
  }) = _LoginInputModel;
  factory LoginInputModel.fromJson(Map<String, dynamic> json) =>
      _$LoginInputModelFromJson(json);
}
