import 'package:bloc/bloc.dart';
import 'package:flutter_libserialport/flutter_libserialport.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'reader_setting_event.dart';
part 'reader_setting_state.dart';
part 'reader_setting_bloc.freezed.dart';

class ReaderSettingBloc extends Bloc<ReaderSettingEvent, ReaderSettingState> {
  List<SerialPort> serialPorts = [];
  SerialPortReader? reader;
  SerialPort? port;
  ReaderSettingBloc() : super(const _Initial()) {
    on<ReaderSettingEvent>((event, emit) async {
      await event.map(
        getPorts: (value) async {
          emit(const ReaderSettingState.loading());
          List<String> ports = SerialPort.availablePorts;
          ports.map(
            (e) {
              final port = SerialPort(e);
              serialPorts.add(port);
            },
          ).toList();
          reader = SerialPortReader(serialPorts.first);
          port = serialPorts.first;
          emit(ReaderSettingState.loaded(ports: serialPorts));
        },
      );
    });
  }
}
