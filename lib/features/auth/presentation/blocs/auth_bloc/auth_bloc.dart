import 'package:alhazem/core/bases/models/response_model/response_model.dart';
import 'package:alhazem/core/cache/app_preferences.dart';
import 'package:alhazem/features/auth/domain/models/inputs_model/input_model.dart';
import 'package:alhazem/features/auth/domain/usecases/auth_usecases.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import '../../../domain/models/login_model.dart';
part 'auth_event.dart';
part 'auth_state.dart';
part 'auth_bloc.freezed.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final LoginUseCase loginUseCase;
  final AppPreferences appPreferences;
  AuthBloc({required this.loginUseCase, required this.appPreferences})
      : super(const _Initial()) {
    on<AuthEvent>((event, emit) async {
      await event.map(
        login: (value) async {
          emit(const AuthState.loading());
          final failureOrSuccess = await loginUseCase.execute(value.input);
          await failureOrSuccess.when(
            (success) async {
              await appPreferences.setUserToken(success.data.token);
              emit(AuthState.success(success: success));
            },
            (error) {
              emit(AuthState.error(message: error.message));
            },
          );
        },
      );
    });
  }
}
