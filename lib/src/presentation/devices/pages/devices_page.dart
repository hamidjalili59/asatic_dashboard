import 'package:asatic_dashboard/src/presentation/devices/bloc/devices/devices_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

///
class DevicesPage extends StatelessWidget {
  ///
  const DevicesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () async => context.go('/devices/newDevice'),
        ),
        body: BlocProvider(
          create: (context) => DevicesBloc(),
          child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: BlocBuilder<DevicesBloc, DevicesState>(
              bloc: DevicesBloc(),
              builder: (context, state) {
                return state.when(
                  getDeviceSuccessfull: (devices) {
                    return ListView.separated(
                      padding: EdgeInsets.only(top: 12.h),
                      itemCount: devices.length,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 12.h);
                      },
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: EdgeInsets.symmetric(horizontal: 16.w),
                          child: Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.black54,
                              ),
                              borderRadius: BorderRadius.circular(12),
                            ),
                            width: double.infinity,
                            height: 60.h,
                            alignment: Alignment.center,
                            child: Text(devices[index].name ?? 'UnNamed'),
                          ),
                        );
                      },
                    );
                  },
                  initial: () => const SizedBox.shrink(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircularProgressIndicator(),
                      ],
                    ),
                  ),
                  loadInProgress: () => const SizedBox.shrink(),
                  getDeviceFailed: () => const SizedBox.shrink(),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
