import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination_model.freezed.dart';
part 'pagination_model.g.dart';

@freezed
abstract class PaginationModel with _$PaginationModel {
  const factory PaginationModel({
    @Default(1) @JsonKey(name: "total_pages") int totalPages,
    @Default(1) @JsonKey(name: "current_page") int currentPage,
    @Default(0) @JsonKey(name: "items_count") int itemsCount,
  }) = _PaginationModel;
  factory PaginationModel.fromJson(Map<String, dynamic> json) =>
      _$PaginationModelFromJson(json);
}
