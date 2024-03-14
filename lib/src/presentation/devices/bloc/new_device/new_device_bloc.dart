import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'new_device_state.dart';
part 'new_device_event.dart';
part 'new_device_bloc.freezed.dart';

///
class NewDeviceBloc extends Bloc<NewDeviceEvent, NewDeviceState> {
  ///
  factory NewDeviceBloc() {
    return _singleton ??= NewDeviceBloc._internal();
  }

  ///
  NewDeviceBloc._internal() : super(const NewDeviceState.configRouter()) {
    on<_NextPageEvent>(_onNextPageEvent);
    on<_PrePageEvent>(_onPrePageEvent);
  }
  static NewDeviceBloc? _singleton;

  ///
  int latestPage = 0;

  FutureOr<void> _onPrePageEvent(
    _PrePageEvent event,
    Emitter<NewDeviceState> emit,
  ) {}

  FutureOr<void> _onNextPageEvent(
    _NextPageEvent event,
    Emitter<NewDeviceState> emit,
  ) {}
}
