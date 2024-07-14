import 'package:freezed_annotation/freezed_annotation.dart';
part 'create_lead_model.freezed.dart';
part 'create_lead_model.g.dart';

@freezed
abstract class CreateLeadModel with _$CreateLeadModel {
  // ignore: invalid_annotation_target
  factory CreateLeadModel({@Default(0) @JsonKey(name: "lead_id") int leadId}) =
      _CreateLeadModel;
  factory CreateLeadModel.fromJson(Map<String, dynamic> json) =>
      _$CreateLeadModelFromJson(json);
}
