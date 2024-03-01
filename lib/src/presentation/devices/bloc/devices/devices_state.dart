part of 'devices_bloc.dart';

///
@freezed
class DevicesState with _$DevicesState {
  ///
  const factory DevicesState.initial() = _Initial;

  ///
  const factory DevicesState.loadInProgress() = _LoadInProgress;

  ///
  const factory DevicesState.getDeviceSuccessfull({
    ///
    @Default([]) List<Device> devices,
  }) = _GetDeviceSuccessfull;

  ///
  const factory DevicesState.getDeviceFailed() = _GetDeviceFailed;
}
