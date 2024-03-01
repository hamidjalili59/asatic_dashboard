import 'dart:async';

import 'package:asatic_dashboard/src/core/network/api_client.dart';
import 'package:asatic_dashboard/src/features/devices/domain/models/device_model.dart';
import 'package:asatic_dashboard/src/features/devices/domain/repositories/devices_repository.dart';

///
class DevicesRepositoryImpl implements DevicesRepository {
  @override
  FutureOr<Device> editDevice({Device? device}) {
    throw UnimplementedError();
  }

  @override
  FutureOr<List<Device>> getDevices({int? id}) async {
    final response = await ApiClient().dio.get<Map<String, dynamic>>(
      '/admin',
      queryParameters: {'id': id},
    );
    final deviceList = (response.data?['deviceList'] as List<dynamic>)
        .map((e) => Device.fromJson(e as Map<String, dynamic>))
        .toList();
    return deviceList;
  }
}
