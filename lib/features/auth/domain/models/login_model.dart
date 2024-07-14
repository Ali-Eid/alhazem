// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_model.freezed.dart';
part 'login_model.g.dart';

@freezed
abstract class LoginModel with _$LoginModel {
  factory LoginModel({
    @Default(0) int id,
    @Default("") String email,
    @Default("") String phone,
    @Default("") String token,
  }) = _LoginModel;
  factory LoginModel.fromJson(Map<String, dynamic> json) =>
      _$LoginModelFromJson(json);
}

@freezed
abstract class AddressModel with _$AddressModel {
  factory AddressModel({
    @Default("") String city,
    @Default("") String street,
    @Default("") @JsonKey(name: "street_2") String street2,
  }) = _AddressModel;
  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
