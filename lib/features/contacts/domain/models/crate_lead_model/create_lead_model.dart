import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_lead_model.freezed.dart';
part 'create_lead_model.g.dart';

@freezed
abstract class CreateLeadModel with _$CreateLeadModel {
  factory CreateLeadModel({
    // ignore: invalid_annotation_target
    @Default(0) @JsonKey(name: "lead_id") int leadId,
    // ignore: invalid_annotation_target
    @Default(0) @JsonKey(name: "partner_id") int partnerId,
    // ignore: invalid_annotation_target
    @Default("") @JsonKey(name: "lead_name") String leadName,
  }) = _CreateLeadModel;
  factory CreateLeadModel.fromJson(Map<String, dynamic> json) =>
      _$CreateLeadModelFromJson(json);
}
