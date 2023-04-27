import 'package:flutter/material.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/app.styles.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.styles.dart';

class MobileHoverAnimation extends StatefulWidget {
  final double? height;
  final double? width;
  final Curve? curve;
  final double? thickness;
  final String? label;
  final int? milliSeconds;

  const MobileHoverAnimation(
      {Key? key,
      this.height,
      this.width,
      this.curve,
      this.thickness,
      this.label,
      this.milliSeconds})
      : super(key: key);

  @override
  State<MobileHoverAnimation> createState() => _MobileHoverAnimationState();
}

class _MobileHoverAnimationState extends State<MobileHoverAnimation> {
  bool animate = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: MouseRegion(
        cursor: SystemMouseCursors.click,
        onEnter: (value) {
          setState(() {
            animate = true;
          });
        },
        onExit: (value) {
          setState(() {
            animate = false;
          });
        },
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
                left: 0,
                top: 0,
                child: AnimatedContainer(
                    height: widget.thickness,
                    width: animate ? widget.width! + 4 : 25,
                    curve: widget.curve!,
                    color: Colors.white,
                    duration: Duration(milliseconds: widget.milliSeconds!))),
            Positioned(
                left: 0,
                top: 0,
                child: AnimatedContainer(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    width: widget.thickness,
                    height: animate ? widget.height! + 4 : 25,
                    curve: widget.curve!,
                    duration: Duration(milliseconds: widget.milliSeconds!))),
            Positioned(
                left: 0,
                top: 0,
                child: AnimatedContainer(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    height: widget.thickness,
                    width: animate ? widget.width! + 4 : 25,
                    curve: widget.curve!,
                    duration: Duration(milliseconds: widget.milliSeconds!))),
            Positioned(
                right: 0,
                bottom: 0,
                child: AnimatedContainer(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    height: widget.thickness,
                    width: animate ? widget.width! + 4 : 25,
                    curve: widget.curve!,
                    duration: Duration(milliseconds: widget.milliSeconds!))),
            Positioned(
                right: 0,
                bottom: 0,
                child: AnimatedContainer(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8.0)),
                    width: widget.thickness,
                    height: animate ? widget.height! + 4 : 25,
                    curve: widget.curve!,
                    duration: Duration(milliseconds: widget.milliSeconds!))),
            AnimatedContainer(
                decoration: BoxDecoration(
                    color: animate
                        ? Colors.transparent
                        : const Color(0xff136a8a).withOpacity(0.2)),
                duration: Duration(milliseconds: widget.milliSeconds!),
                curve: widget.curve!,
                height: widget.height!,
                width: widget.width!,
                child: Center(
                  child: Text(widget.label!,
                      style: MobileAppStyles.instance.appDefaultHeader),
                ))
          ],
        ),
      ),
    );
  }
}
