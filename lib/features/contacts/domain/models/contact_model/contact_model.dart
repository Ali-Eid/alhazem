// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'contact_model.freezed.dart';
part 'contact_model.g.dart';

@freezed
abstract class ContactModel with _$ContactModel {
  factory ContactModel({
    @Default(0) int id,
    @Default("") String name,
    @Default("") String type,
    @Default("") String phone,
    @Default(false) @JsonKey(name: "is_lead") bool isLead,
    @Default("") @JsonKey(name: "whatsapp_number") String whatsappNumber,
  }) = _ContactModel;
  factory ContactModel.fromJson(Map<String, dynamic> json) =>
      _$ContactModelFromJson(json);
}
