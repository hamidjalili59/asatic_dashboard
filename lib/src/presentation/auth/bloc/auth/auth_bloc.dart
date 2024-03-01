import 'dart:async';
import 'dart:io';

import 'package:asatic_dashboard/src/core/network/api_client.dart';
import 'package:asatic_dashboard/src/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_state.dart';
part 'auth_event.dart';
part 'auth_bloc.freezed.dart';

///
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  ///
  factory AuthBloc() {
    return _singleton ??= AuthBloc._internal();
  }
  AuthBloc._internal() : super(const AuthState.initial()) {
    on<_LoginEvent>(_onLoginEvent);
  }

  FutureOr<void> _onLoginEvent(
    _LoginEvent event,
    Emitter<AuthState> emit,
  ) async {
    final response = await ApiClient().dio.post<Map<String, dynamic>>(
      '/admin',
      data: {
        'phone': int.tryParse(event.username) ?? 0,
        'password': event.password,
      },
    );
    if (response.statusCode == HttpStatus.ok) {
      try {
        final jsonResult = ProfileModel.fromJson(
          response.data ?? {},
        );
        if (locator.isRegistered<ProfileModel>()) {
          await locator.unregister<ProfileModel>();
          locator.registerSingleton<ProfileModel>(jsonResult);
        } else {
          locator.registerSingleton<ProfileModel>(jsonResult);
        }
      } catch (_) {}
      emit(const AuthState.loginSuccess());
    } else {
      emit(const AuthState.loginFailed());
    }
  }

  static AuthBloc? _singleton;
}

///
class ProfileModel {
  ///
  ProfileModel({
    this.name,
    this.address,
    this.phone,
    this.password,
    this.deviceList,
  });

  ///
  factory ProfileModel.fromJson(Map<String, dynamic> json) => ProfileModel(
        name: json['name'] as String,
        address: json['address'] as String,
        phone: json['phone'] as int,
        password: json['password'] as String,
        deviceList: json['deviceList'] as List<dynamic>,
      );

  ///
  final String? name;

  ///
  final String? address;

  ///
  final int? phone;

  ///
  final String? password;

  ///
  final List<dynamic>? deviceList;
}
