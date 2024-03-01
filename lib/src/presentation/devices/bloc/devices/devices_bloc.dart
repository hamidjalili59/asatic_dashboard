import 'dart:async';
import 'package:asatic_dashboard/src/features/devices/domain/models/device_model.dart';
import 'package:asatic_dashboard/src/features/devices/domain/usecases/get_devices_use_case.dart';
import 'package:asatic_dashboard/src/locator.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'devices_state.dart';
part 'devices_event.dart';
part 'devices_bloc.freezed.dart';

///
class DevicesBloc extends Bloc<DevicesEvent, DevicesState> {
  ///
  factory DevicesBloc() {
    return _singleton ??= DevicesBloc._internal();
  }
  DevicesBloc._internal() : super(const DevicesState.initial()) {
    on<_GetDevicesEvent>(_onGetDevicesEvent);
    add(_GetDevicesEvent(phone: 09361360584));
  }
  final GetDevicesUseCase _getDevicesUsecase = locator.get<GetDevicesUseCase>();

  FutureOr<void> _onGetDevicesEvent(
    _GetDevicesEvent event,
    Emitter<DevicesState> emit,
  ) async {
    await _getDevicesUsecase.call(param: event.phone).then((value) {
      if (value?.isNotEmpty ?? false) {
        emit(DevicesState.getDeviceSuccessfull(devices: value ?? []));
      } else {
        emit(const DevicesState.getDeviceFailed());
      }
    });
  }

  static DevicesBloc? _singleton;
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
