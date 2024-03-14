part of 'new_device_bloc.dart';

///
@freezed
class NewDeviceEvent with _$NewDeviceEvent {
  ///
  factory NewDeviceEvent.nextPage() = _NextPageEvent;

  ///
  factory NewDeviceEvent.prePage() = _PrePageEvent;
}
