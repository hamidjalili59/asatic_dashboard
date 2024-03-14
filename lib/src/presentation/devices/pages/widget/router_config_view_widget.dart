import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

///
class RouterConfigViewWidget extends StatefulWidget {
  ///
  const RouterConfigViewWidget({super.key});

  @override
  State<RouterConfigViewWidget> createState() => _RouterConfigViewWidgetState();
}

class _RouterConfigViewWidgetState extends State<RouterConfigViewWidget> {
  final FocusNode usernameNode = FocusNode();
  final FocusNode passwordNode = FocusNode();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  void initState() {
    super.initState();
    usernameNode.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 48.w),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            'لطفا شناسه و گذرواژه مودم خود را وارد کنید',
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.titleSmall,
          ),
          SizedBox(height: 36.h),
          CustomTextFieldComponent(
            focusNode: usernameNode,
            textController: usernameController,
            title: 'Router name',
          ),
          SizedBox(height: 24.h),
          CustomTextFieldComponent(
            focusNode: passwordNode,
            textController: passwordController,
            title: 'Router password',
          ),
        ],
      ),
    );
  }
}

///
class CustomTextFieldComponent extends StatelessWidget {
  ///
  const CustomTextFieldComponent({
    required this.focusNode,
    required this.textController,
    required this.title,
    this.onSubmitted,
    this.isObserver = false,
    this.hasHeight = true,
    super.key,
  });

  ///
  final FocusNode focusNode;

  ///
  final String title;

  ///
  final TextEditingController textController;

  ///
  final bool isObserver;

  ///
  final bool hasHeight;

  ///
  final void Function(String)? onSubmitted;

  @override
  Widget build(BuildContext context) {
    return PhysicalModel(
      color: Colors.black45,
      shadowColor: Colors.black45,
      elevation: focusNode.hasFocus ? 5 : .1,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        width: double.infinity,
        height: hasHeight ? 50.h : null,
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.black38, width: 2),
          borderRadius: BorderRadius.circular(16.r),
        ),
        child: Padding(
          padding: EdgeInsets.only(
            left: 16.w,
            right: 16.w,
          ),
          child: Directionality(
            textDirection: TextDirection.rtl,
            child: TextField(
              textDirection: TextDirection.rtl,
              autofocus: true,
              focusNode: focusNode,
              controller: textController,
              onSubmitted: onSubmitted ?? (value) {},
              cursorOpacityAnimates: true, maxLines: 20,
              // obscureText: isObserver,
              // obscuringCharacter: '\u1360',
              style: Theme.of(context)
                  .textTheme
                  .titleMedium!
                  .copyWith(fontWeight: FontWeight.bold, fontSize: 16.r),
              decoration: InputDecoration(
                semanticCounterText: '',
                labelStyle: Theme.of(context)
                    .textTheme
                    .labelMedium
                    ?.copyWith(fontSize: 14.r),
                label: hasHeight
                    ? Text(
                        title,
                        textAlign: TextAlign.start,
                      )
                    : Align(
                        alignment: AlignmentDirectional.topStart,
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                            vertical: 8.h,
                          ),
                          child: Text(
                            title,
                            textAlign: TextAlign.start,
                          ),
                        ),
                      ),
                border: const UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                counterText: '',
                contentPadding: EdgeInsets.zero,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
