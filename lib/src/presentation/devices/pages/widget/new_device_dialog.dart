// ignore_for_file: lines_longer_than_80_chars

import 'package:asatic_dashboard/src/presentation/devices/bloc/new_device/new_device_bloc.dart';
import 'package:asatic_dashboard/src/presentation/devices/pages/widget/device_config_view.dart';
import 'package:asatic_dashboard/src/presentation/devices/pages/widget/queue_manage_view.dart';
import 'package:asatic_dashboard/src/presentation/devices/pages/widget/router_config_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

///
class NewDeviceDialogWidget extends StatefulWidget {
  ///
  const NewDeviceDialogWidget({super.key});

  @override
  State<NewDeviceDialogWidget> createState() => _NewDeviceDialogWidgetState();
}

class _NewDeviceDialogWidgetState extends State<NewDeviceDialogWidget> {
  final PageController _pageController = PageController();

  final List<Widget> dialogViewList = [
    const RouterConfigViewWidget(),
    const DeviceConfigView(),
    const QueueManagerView(),
    Container(
      color: Colors.green,
    ),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  int currentPage = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => context.pop(),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: BlocProvider(
            create: (context) => NewDeviceBloc(),
            child: SizedBox(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  GestureDetector(
                    onTap: () {},
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.r),
                      child: ColoredBox(
                        color: Colors.white,
                        child: AnimatedContainer(
                          width: 1.sw,
                          height: currentPage == 3
                              ? .39.sh
                              : .33.sh + (currentPage * 0.15.sh),
                          duration: Durations.short4,
                          child: BlocBuilder<NewDeviceBloc, NewDeviceState>(
                            bloc: NewDeviceBloc(),
                            builder: (context, state) {
                              return Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Expanded(
                                    child: state.when(
                                      loadInProgress: () {
                                        return const SizedBox();
                                      },
                                      configRouter: () {
                                        return Padding(
                                          padding: EdgeInsets.only(
                                            top: 12.h,
                                          ),
                                          child: PageView.builder(
                                            physics:
                                                const NeverScrollableScrollPhysics(),
                                            itemCount: dialogViewList.length,
                                            controller: _pageController,
                                            onPageChanged: (value) {
                                              setState(() {
                                                currentPage = value;
                                              });
                                            },
                                            itemBuilder: (context, index) {
                                              return Stack(
                                                children: [
                                                  dialogViewList[index],
                                                  if (index == 2) ...[
                                                    Positioned(
                                                      top: 0,
                                                      left: 0,
                                                      right: 0,
                                                      height: 24.h,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color:
                                                                  Colors.white,
                                                              blurRadius: 4,
                                                              spreadRadius: 1,
                                                              offset: Offset(
                                                                0,
                                                                -15.h,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Positioned(
                                                      bottom: 0,
                                                      left: 0,
                                                      right: 0,
                                                      height: 24.h,
                                                      child: Container(
                                                        decoration:
                                                            BoxDecoration(
                                                          boxShadow: [
                                                            BoxShadow(
                                                              color:
                                                                  Colors.white,
                                                              blurRadius: 7,
                                                              spreadRadius: 3,
                                                              offset: Offset(
                                                                0,
                                                                20.h,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ],
                                              );
                                            },
                                          ),
                                        );
                                      },
                                      configQueue: () {
                                        return const SizedBox();
                                      },
                                    ),
                                  ),
                                  SizedBox(height: 24.h),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                      horizontal: 36.w,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        ElevatedButton(
                                          onPressed: () {
                                            if (currentPage == 0) {
                                              context.pop();
                                            }
                                            if (currentPage <
                                                dialogViewList.length) {
                                              _pageController.animateToPage(
                                                currentPage - 1,
                                                duration: Durations.short4,
                                                curve: Curves.linear,
                                              );
                                            }
                                          },
                                          child: SizedBox(
                                            height: 20.h,
                                            child: Text(
                                              currentPage > 0
                                                  ? 'Previous'
                                                  : ' Cancel  ',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall
                                                  ?.copyWith(height: 1),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 8.h,
                                          child: ListView.builder(
                                            shrinkWrap: true,
                                            scrollDirection: Axis.horizontal,
                                            itemCount: 4,
                                            itemBuilder: (context, index) =>
                                                Padding(
                                              padding: EdgeInsets.symmetric(
                                                horizontal: 2.w,
                                              ),
                                              child: AspectRatio(
                                                aspectRatio:
                                                    index == currentPage
                                                        ? 16 / 9
                                                        : 1,
                                                child: AnimatedContainer(
                                                  duration: Durations.short4,
                                                  decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                      100,
                                                    ),
                                                    color: index == currentPage
                                                        ? Colors.black87
                                                        : Colors.black38,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        ElevatedButton(
                                          onPressed: () {
                                            if (currentPage <
                                                dialogViewList.length) {
                                              _pageController.animateToPage(
                                                currentPage + 1,
                                                duration: Durations.short4,
                                                curve: Curves.linear,
                                              );
                                            }
                                          },
                                          child: SizedBox(
                                            height: 20.h,
                                            child: Text(
                                              'Next',
                                              maxLines: 1,
                                              overflow: TextOverflow.ellipsis,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .titleSmall
                                                  ?.copyWith(
                                                    height: 1,
                                                  ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 24.h),
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
