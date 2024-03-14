part of 'new_device_bloc.dart';

///
@freezed
class NewDeviceState with _$NewDeviceState {
  ///
  const factory NewDeviceState.loadInProgress() = _LoadInProgress;

  ///
  const factory NewDeviceState.configRouter() = _ConfigRouter;

  ///
  const factory NewDeviceState.configQueue() = _ConfigQueue;
}
