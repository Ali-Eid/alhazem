part of 'reader_setting_bloc.dart';

@freezed
class ReaderSettingState with _$ReaderSettingState {
  const factory ReaderSettingState.initial() = _Initial;
  const factory ReaderSettingState.loading() = _Loading;
  const factory ReaderSettingState.loaded({required List<SerialPort> ports}) =
      _Loaded;
  const factory ReaderSettingState.error({required String message}) = _Error;
}
