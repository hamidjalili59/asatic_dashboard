// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'devices_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$DevicesState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Device> devices) getDeviceSuccessfull,
    required TResult Function() getDeviceFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Device> devices)? getDeviceSuccessfull,
    TResult? Function()? getDeviceFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Device> devices)? getDeviceSuccessfull,
    TResult Function()? getDeviceFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetDeviceSuccessfull value) getDeviceSuccessfull,
    required TResult Function(_GetDeviceFailed value) getDeviceFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult? Function(_GetDeviceFailed value)? getDeviceFailed,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult Function(_GetDeviceFailed value)? getDeviceFailed,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicesStateCopyWith<$Res> {
  factory $DevicesStateCopyWith(
          DevicesState value, $Res Function(DevicesState) then) =
      _$DevicesStateCopyWithImpl<$Res, DevicesState>;
}

/// @nodoc
class _$DevicesStateCopyWithImpl<$Res, $Val extends DevicesState>
    implements $DevicesStateCopyWith<$Res> {
  _$DevicesStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$DevicesStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'DevicesState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Device> devices) getDeviceSuccessfull,
    required TResult Function() getDeviceFailed,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Device> devices)? getDeviceSuccessfull,
    TResult? Function()? getDeviceFailed,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Device> devices)? getDeviceSuccessfull,
    TResult Function()? getDeviceFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetDeviceSuccessfull value) getDeviceSuccessfull,
    required TResult Function(_GetDeviceFailed value) getDeviceFailed,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult? Function(_GetDeviceFailed value)? getDeviceFailed,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult Function(_GetDeviceFailed value)? getDeviceFailed,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements DevicesState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadInProgressImplCopyWith<$Res> {
  factory _$$LoadInProgressImplCopyWith(_$LoadInProgressImpl value,
          $Res Function(_$LoadInProgressImpl) then) =
      __$$LoadInProgressImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadInProgressImplCopyWithImpl<$Res>
    extends _$DevicesStateCopyWithImpl<$Res, _$LoadInProgressImpl>
    implements _$$LoadInProgressImplCopyWith<$Res> {
  __$$LoadInProgressImplCopyWithImpl(
      _$LoadInProgressImpl _value, $Res Function(_$LoadInProgressImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$LoadInProgressImpl implements _LoadInProgress {
  const _$LoadInProgressImpl();

  @override
  String toString() {
    return 'DevicesState.loadInProgress()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadInProgressImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Device> devices) getDeviceSuccessfull,
    required TResult Function() getDeviceFailed,
  }) {
    return loadInProgress();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Device> devices)? getDeviceSuccessfull,
    TResult? Function()? getDeviceFailed,
  }) {
    return loadInProgress?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Device> devices)? getDeviceSuccessfull,
    TResult Function()? getDeviceFailed,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetDeviceSuccessfull value) getDeviceSuccessfull,
    required TResult Function(_GetDeviceFailed value) getDeviceFailed,
  }) {
    return loadInProgress(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult? Function(_GetDeviceFailed value)? getDeviceFailed,
  }) {
    return loadInProgress?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult Function(_GetDeviceFailed value)? getDeviceFailed,
    required TResult orElse(),
  }) {
    if (loadInProgress != null) {
      return loadInProgress(this);
    }
    return orElse();
  }
}

abstract class _LoadInProgress implements DevicesState {
  const factory _LoadInProgress() = _$LoadInProgressImpl;
}

/// @nodoc
abstract class _$$GetDeviceSuccessfullImplCopyWith<$Res> {
  factory _$$GetDeviceSuccessfullImplCopyWith(_$GetDeviceSuccessfullImpl value,
          $Res Function(_$GetDeviceSuccessfullImpl) then) =
      __$$GetDeviceSuccessfullImplCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Device> devices});
}

/// @nodoc
class __$$GetDeviceSuccessfullImplCopyWithImpl<$Res>
    extends _$DevicesStateCopyWithImpl<$Res, _$GetDeviceSuccessfullImpl>
    implements _$$GetDeviceSuccessfullImplCopyWith<$Res> {
  __$$GetDeviceSuccessfullImplCopyWithImpl(_$GetDeviceSuccessfullImpl _value,
      $Res Function(_$GetDeviceSuccessfullImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? devices = null,
  }) {
    return _then(_$GetDeviceSuccessfullImpl(
      devices: null == devices
          ? _value._devices
          : devices // ignore: cast_nullable_to_non_nullable
              as List<Device>,
    ));
  }
}

/// @nodoc

class _$GetDeviceSuccessfullImpl implements _GetDeviceSuccessfull {
  const _$GetDeviceSuccessfullImpl({final List<Device> devices = const []})
      : _devices = devices;

  ///
  final List<Device> _devices;

  ///
  @override
  @JsonKey()
  List<Device> get devices {
    if (_devices is EqualUnmodifiableListView) return _devices;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_devices);
  }

  @override
  String toString() {
    return 'DevicesState.getDeviceSuccessfull(devices: $devices)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDeviceSuccessfullImpl &&
            const DeepCollectionEquality().equals(other._devices, _devices));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_devices));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDeviceSuccessfullImplCopyWith<_$GetDeviceSuccessfullImpl>
      get copyWith =>
          __$$GetDeviceSuccessfullImplCopyWithImpl<_$GetDeviceSuccessfullImpl>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Device> devices) getDeviceSuccessfull,
    required TResult Function() getDeviceFailed,
  }) {
    return getDeviceSuccessfull(devices);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Device> devices)? getDeviceSuccessfull,
    TResult? Function()? getDeviceFailed,
  }) {
    return getDeviceSuccessfull?.call(devices);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Device> devices)? getDeviceSuccessfull,
    TResult Function()? getDeviceFailed,
    required TResult orElse(),
  }) {
    if (getDeviceSuccessfull != null) {
      return getDeviceSuccessfull(devices);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetDeviceSuccessfull value) getDeviceSuccessfull,
    required TResult Function(_GetDeviceFailed value) getDeviceFailed,
  }) {
    return getDeviceSuccessfull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult? Function(_GetDeviceFailed value)? getDeviceFailed,
  }) {
    return getDeviceSuccessfull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult Function(_GetDeviceFailed value)? getDeviceFailed,
    required TResult orElse(),
  }) {
    if (getDeviceSuccessfull != null) {
      return getDeviceSuccessfull(this);
    }
    return orElse();
  }
}

abstract class _GetDeviceSuccessfull implements DevicesState {
  const factory _GetDeviceSuccessfull({final List<Device> devices}) =
      _$GetDeviceSuccessfullImpl;

  ///
  List<Device> get devices;
  @JsonKey(ignore: true)
  _$$GetDeviceSuccessfullImplCopyWith<_$GetDeviceSuccessfullImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$GetDeviceFailedImplCopyWith<$Res> {
  factory _$$GetDeviceFailedImplCopyWith(_$GetDeviceFailedImpl value,
          $Res Function(_$GetDeviceFailedImpl) then) =
      __$$GetDeviceFailedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetDeviceFailedImplCopyWithImpl<$Res>
    extends _$DevicesStateCopyWithImpl<$Res, _$GetDeviceFailedImpl>
    implements _$$GetDeviceFailedImplCopyWith<$Res> {
  __$$GetDeviceFailedImplCopyWithImpl(
      _$GetDeviceFailedImpl _value, $Res Function(_$GetDeviceFailedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$GetDeviceFailedImpl implements _GetDeviceFailed {
  const _$GetDeviceFailedImpl();

  @override
  String toString() {
    return 'DevicesState.getDeviceFailed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetDeviceFailedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loadInProgress,
    required TResult Function(List<Device> devices) getDeviceSuccessfull,
    required TResult Function() getDeviceFailed,
  }) {
    return getDeviceFailed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loadInProgress,
    TResult? Function(List<Device> devices)? getDeviceSuccessfull,
    TResult? Function()? getDeviceFailed,
  }) {
    return getDeviceFailed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loadInProgress,
    TResult Function(List<Device> devices)? getDeviceSuccessfull,
    TResult Function()? getDeviceFailed,
    required TResult orElse(),
  }) {
    if (getDeviceFailed != null) {
      return getDeviceFailed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadInProgress value) loadInProgress,
    required TResult Function(_GetDeviceSuccessfull value) getDeviceSuccessfull,
    required TResult Function(_GetDeviceFailed value) getDeviceFailed,
  }) {
    return getDeviceFailed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_LoadInProgress value)? loadInProgress,
    TResult? Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult? Function(_GetDeviceFailed value)? getDeviceFailed,
  }) {
    return getDeviceFailed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadInProgress value)? loadInProgress,
    TResult Function(_GetDeviceSuccessfull value)? getDeviceSuccessfull,
    TResult Function(_GetDeviceFailed value)? getDeviceFailed,
    required TResult orElse(),
  }) {
    if (getDeviceFailed != null) {
      return getDeviceFailed(this);
    }
    return orElse();
  }
}

abstract class _GetDeviceFailed implements DevicesState {
  const factory _GetDeviceFailed() = _$GetDeviceFailedImpl;
}

/// @nodoc
mixin _$DevicesEvent {
  int get phone => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) getDevicesEvent,
    required TResult Function(int phone) addNewDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phone)? getDevicesEvent,
    TResult? Function(int phone)? addNewDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? getDevicesEvent,
    TResult Function(int phone)? addNewDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDevicesEvent value) getDevicesEvent,
    required TResult Function(_AddNewDevice value) addNewDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDevicesEvent value)? getDevicesEvent,
    TResult? Function(_AddNewDevice value)? addNewDevice,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDevicesEvent value)? getDevicesEvent,
    TResult Function(_AddNewDevice value)? addNewDevice,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DevicesEventCopyWith<DevicesEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DevicesEventCopyWith<$Res> {
  factory $DevicesEventCopyWith(
          DevicesEvent value, $Res Function(DevicesEvent) then) =
      _$DevicesEventCopyWithImpl<$Res, DevicesEvent>;
  @useResult
  $Res call({int phone});
}

/// @nodoc
class _$DevicesEventCopyWithImpl<$Res, $Val extends DevicesEvent>
    implements $DevicesEventCopyWith<$Res> {
  _$DevicesEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_value.copyWith(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GetDevicesEventImplCopyWith<$Res>
    implements $DevicesEventCopyWith<$Res> {
  factory _$$GetDevicesEventImplCopyWith(_$GetDevicesEventImpl value,
          $Res Function(_$GetDevicesEventImpl) then) =
      __$$GetDevicesEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int phone});
}

/// @nodoc
class __$$GetDevicesEventImplCopyWithImpl<$Res>
    extends _$DevicesEventCopyWithImpl<$Res, _$GetDevicesEventImpl>
    implements _$$GetDevicesEventImplCopyWith<$Res> {
  __$$GetDevicesEventImplCopyWithImpl(
      _$GetDevicesEventImpl _value, $Res Function(_$GetDevicesEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$GetDevicesEventImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$GetDevicesEventImpl implements _GetDevicesEvent {
  _$GetDevicesEventImpl({this.phone = 0});

  @override
  @JsonKey()
  final int phone;

  @override
  String toString() {
    return 'DevicesEvent.getDevicesEvent(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GetDevicesEventImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GetDevicesEventImplCopyWith<_$GetDevicesEventImpl> get copyWith =>
      __$$GetDevicesEventImplCopyWithImpl<_$GetDevicesEventImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) getDevicesEvent,
    required TResult Function(int phone) addNewDevice,
  }) {
    return getDevicesEvent(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phone)? getDevicesEvent,
    TResult? Function(int phone)? addNewDevice,
  }) {
    return getDevicesEvent?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? getDevicesEvent,
    TResult Function(int phone)? addNewDevice,
    required TResult orElse(),
  }) {
    if (getDevicesEvent != null) {
      return getDevicesEvent(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDevicesEvent value) getDevicesEvent,
    required TResult Function(_AddNewDevice value) addNewDevice,
  }) {
    return getDevicesEvent(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDevicesEvent value)? getDevicesEvent,
    TResult? Function(_AddNewDevice value)? addNewDevice,
  }) {
    return getDevicesEvent?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDevicesEvent value)? getDevicesEvent,
    TResult Function(_AddNewDevice value)? addNewDevice,
    required TResult orElse(),
  }) {
    if (getDevicesEvent != null) {
      return getDevicesEvent(this);
    }
    return orElse();
  }
}

abstract class _GetDevicesEvent implements DevicesEvent {
  factory _GetDevicesEvent({final int phone}) = _$GetDevicesEventImpl;

  @override
  int get phone;
  @override
  @JsonKey(ignore: true)
  _$$GetDevicesEventImplCopyWith<_$GetDevicesEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$AddNewDeviceImplCopyWith<$Res>
    implements $DevicesEventCopyWith<$Res> {
  factory _$$AddNewDeviceImplCopyWith(
          _$AddNewDeviceImpl value, $Res Function(_$AddNewDeviceImpl) then) =
      __$$AddNewDeviceImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int phone});
}

/// @nodoc
class __$$AddNewDeviceImplCopyWithImpl<$Res>
    extends _$DevicesEventCopyWithImpl<$Res, _$AddNewDeviceImpl>
    implements _$$AddNewDeviceImplCopyWith<$Res> {
  __$$AddNewDeviceImplCopyWithImpl(
      _$AddNewDeviceImpl _value, $Res Function(_$AddNewDeviceImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phone = null,
  }) {
    return _then(_$AddNewDeviceImpl(
      phone: null == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$AddNewDeviceImpl implements _AddNewDevice {
  _$AddNewDeviceImpl({this.phone = 0});

  @override
  @JsonKey()
  final int phone;

  @override
  String toString() {
    return 'DevicesEvent.addNewDevice(phone: $phone)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AddNewDeviceImpl &&
            (identical(other.phone, phone) || other.phone == phone));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AddNewDeviceImplCopyWith<_$AddNewDeviceImpl> get copyWith =>
      __$$AddNewDeviceImplCopyWithImpl<_$AddNewDeviceImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int phone) getDevicesEvent,
    required TResult Function(int phone) addNewDevice,
  }) {
    return addNewDevice(phone);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int phone)? getDevicesEvent,
    TResult? Function(int phone)? addNewDevice,
  }) {
    return addNewDevice?.call(phone);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int phone)? getDevicesEvent,
    TResult Function(int phone)? addNewDevice,
    required TResult orElse(),
  }) {
    if (addNewDevice != null) {
      return addNewDevice(phone);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetDevicesEvent value) getDevicesEvent,
    required TResult Function(_AddNewDevice value) addNewDevice,
  }) {
    return addNewDevice(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_GetDevicesEvent value)? getDevicesEvent,
    TResult? Function(_AddNewDevice value)? addNewDevice,
  }) {
    return addNewDevice?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetDevicesEvent value)? getDevicesEvent,
    TResult Function(_AddNewDevice value)? addNewDevice,
    required TResult orElse(),
  }) {
    if (addNewDevice != null) {
      return addNewDevice(this);
    }
    return orElse();
  }
}

abstract class _AddNewDevice implements DevicesEvent {
  factory _AddNewDevice({final int phone}) = _$AddNewDeviceImpl;

  @override
  int get phone;
  @override
  @JsonKey(ignore: true)
  _$$AddNewDeviceImplCopyWith<_$AddNewDeviceImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
