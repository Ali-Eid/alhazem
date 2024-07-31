part of 'reader_setting_bloc.dart';

@freezed
class ReaderSettingEvent with _$ReaderSettingEvent {
  const factory ReaderSettingEvent.getPorts() = _GetPorts;
}
