import 'package:asatic_dashboard/src/features/devices/data/repositories/devices_respository_impl.dart';
import 'package:asatic_dashboard/src/features/devices/domain/repositories/devices_repository.dart';
import 'package:asatic_dashboard/src/features/devices/domain/usecases/get_devices_use_case.dart';
import 'package:get_it/get_it.dart';

///
GetIt locator = GetIt.instance;

///
GetIt setUp() => locator
  ..registerSingleton<DevicesRepository>(DevicesRepositoryImpl())
  ..registerSingleton<GetDevicesUseCase>(GetDevicesUseCase(locator()));
