part of 'devices_bloc.dart';

@freezed

///
class DevicesEvent with _$DevicesEvent {
  ///
  factory DevicesEvent.getDevicesEvent({
    @Default(0) int phone,
  }) = _GetDevicesEvent;

  ///
  factory DevicesEvent.addNewDevice({
    @Default(0) int phone,
  }) = _AddNewDevice;
}
