import 'dart:async';

import 'package:asatic_dashboard/src/features/devices/domain/models/device_model.dart';

///
abstract class DevicesRepository {
  ///
  FutureOr<List<Device>> getDevices({int? id});

  ///
  FutureOr<Device> editDevice({Device? device});
}
