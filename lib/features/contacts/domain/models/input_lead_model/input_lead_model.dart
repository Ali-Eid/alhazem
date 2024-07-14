import 'package:freezed_annotation/freezed_annotation.dart';

part 'input_lead_model.freezed.dart';
part 'input_lead_model.g.dart';

@freezed
abstract class InputLeadModel with _$InputLeadModel {
  factory InputLeadModel({
    @Default("") String name,
    @Default("") @JsonKey(name: "phone_number") String phoneNumber,
  }) = _InputLeadModel;
  factory InputLeadModel.fromJson(Map<String, dynamic> json) =>
      _$InputLeadModelFromJson(json);
}
