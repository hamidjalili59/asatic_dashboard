import 'package:asatic_dashboard/src/core/models/use_case.dart';
import 'package:asatic_dashboard/src/features/devices/domain/models/device_model.dart';
import 'package:asatic_dashboard/src/features/devices/domain/repositories/devices_repository.dart';

///
class GetDevicesUseCase extends UseCase<List<Device>, int> {
  ///
  GetDevicesUseCase(this.repo);

  ///
  DevicesRepository repo;

  @override
  Future<List<Device>?> call({required int param}) async =>
      repo.getDevices(id: param);
}
