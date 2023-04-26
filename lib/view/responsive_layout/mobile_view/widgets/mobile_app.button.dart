import 'package:flutter/material.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.styles.dart';
import 'package:sizer/sizer.dart';

class MobileAppButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String label;

  const MobileAppButton(
      {Key? key, required this.onPressed, required this.label})
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
          padding: EdgeInsets.fromLTRB(4.h, 1.h, 4.h, 1.h),
          decoration: BoxDecoration(
              boxShadow: const [
                BoxShadow(color: Colors.white, spreadRadius: 2, blurRadius: 2)
              ],
              color: const Color(0xff136a8a),
              borderRadius: BorderRadius.all(Radius.circular(16.sp))),
          child: Text(
            label,
            style: MobileAppStyles.instance.appDefaultHeader,
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
