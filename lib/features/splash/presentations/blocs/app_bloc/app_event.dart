part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.appHome() = _AppHome;
  const factory AppEvent.logout() = _LogOutAppHome;
}
