import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
class NewDeviceDialogWidget extends StatelessWidget {
  ///
  const NewDeviceDialogWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.all(36.r),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.r),
                  child: GestureDetector(
                    onTap: () async {},
                    child: ColoredBox(
                      color: Colors.white,
                      child: SizedBox(
                        width: double.infinity,
                        height: 0.65.sh,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 26.h),
                            const Expanded(
                              flex: 10,
                              child: FittedBox(
                                fit: BoxFit.fitWidth,
                                child: Icon(
                                  Icons.person,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 11,
                              child: Padding(
                                padding: EdgeInsets.symmetric(horizontal: 36.w),
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Container(
                                      width: double.infinity,
                                      height: 60.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        color: Colors.black26,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 60.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        color: Colors.black26,
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 60.h,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(12.r),
                                        color: Colors.black26,
                                      ),
                                    ),
                                    SizedBox(height: 12.h),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
