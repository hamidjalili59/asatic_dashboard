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
          child: Icon(Icons.add_rounded, size: 36.r),
        ),
        body: BlocProvider(
          create: (context) => DevicesBloc(),
          child: SizedBox(
            width: 1.sw,
            height: 1.sh,
            child: BlocBuilder<DevicesBloc, DevicesState>(
              bloc: DevicesBloc(),
              builder: (context, state) {
                return Column(
                  children: [
                    SizedBox(height: 12.h),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 16.w),
                      child: Container(
                        width: double.infinity,
                        height: 60.h,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black26, width: 3.w),
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                textAlign: TextAlign.center,
                                style: Theme.of(context)
                                    .textTheme
                                    .titleMedium
                                    ?.copyWith(
                                      fontWeight: FontWeight.bold,
                                    ),
                                decoration: InputDecoration(
                                  focusedBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2.h,
                                      color: Colors.purpleAccent.shade700
                                          .withOpacity(0.5),
                                    ),
                                  ),
                                  enabledBorder: UnderlineInputBorder(
                                    borderSide: BorderSide(
                                      width: 2.h,
                                      color: Colors.transparent,
                                    ),
                                  ),
                                  suffixIcon: Icon(
                                    Icons.search_rounded,
                                    size: 36.r,
                                    color: Colors.black54,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    state.when(
                      getDeviceSuccessfull: (devices) {
                        return ListView.separated(
                          shrinkWrap: true,
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
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
