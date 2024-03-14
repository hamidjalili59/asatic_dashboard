import 'package:asatic_dashboard/src/presentation/devices/pages/widget/router_config_view_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
class DeviceConfigView extends StatefulWidget {
  ///
  const DeviceConfigView({
    super.key,
  });

  @override
  State<DeviceConfigView> createState() => _DeviceConfigViewState();
}

class _DeviceConfigViewState extends State<DeviceConfigView> {
  final FocusNode deviceNameNode = FocusNode();
  final FocusNode messageNode = FocusNode();
  final TextEditingController deviceNameController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 48.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'برای دستگاه خود نامی انتخاب کنید و یک پیام برای چاپ در سر رسید انتخاب کنید',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(height: 36.h),
          CustomTextFieldComponent(
            focusNode: deviceNameNode,
            textController: deviceNameController,
            title: 'Device name',
          ),
          SizedBox(height: 24.h),
          Expanded(
            child: CustomTextFieldComponent(
              focusNode: messageNode,
              textController: messageController,
              title: 'Device Message',
              hasHeight: false,
            ),
          ),
        ],
      ),
    );
  }
}
