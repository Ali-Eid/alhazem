import 'dart:ffi';

import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_price_model.freezed.dart';
part 'check_price_model.g.dart';

@freezed
abstract class CheckPriceModel with _$CheckPriceModel {
  factory CheckPriceModel({
    @Default(0) double price,
  }) = _CheckPriceModel;
  factory CheckPriceModel.fromJson(Map<String, dynamic> json) =>
      _$CheckPriceModelFromJson(json);
}
