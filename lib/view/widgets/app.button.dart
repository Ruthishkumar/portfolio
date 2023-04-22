import 'package:flutter/material.dart';
import 'package:portfolio/view/widgets/app.styles.dart';
import 'package:sizer/sizer.dart';

class AppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const AppButton({Key? key, required this.onPressed, required this.label})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          onPressed();
        },
        child: Container(
          padding: EdgeInsets.fromLTRB(2.h, 1.h, 2.h, 1.h),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: Colors.white, spreadRadius: 2, blurRadius: 2)
              ],
              color: const Color(0xff26D0CE),
              borderRadius: BorderRadius.all(Radius.circular(16.sp))),
          child: Text(
            label,
            style: AppStyles.instance.appDefaultHeader,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
