part of 'auth_bloc.dart';

@freezed

///
class AuthEvent with _$AuthEvent {
  ///
  factory AuthEvent.login({
    @Default('Hamid') String username,
    @Default('Jalili') String password,
  }) = _LoginEvent;
}
