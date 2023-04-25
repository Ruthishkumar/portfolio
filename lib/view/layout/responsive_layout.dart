import 'package:flutter/material.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget mobileView;
  final Widget tabletView;
  final Widget desktopView;
  const ResponsiveLayout(
      {Key? key,
      required this.mobileView,
      required this.tabletView,
      required this.desktopView})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 767) {
        return mobileView;
      } else if (constraints.maxWidth < 1023) {
        return tabletView;
      } else {
        return desktopView;
      }
    });
  }
}
