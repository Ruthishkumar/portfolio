import 'package:flutter/material.dart';
import 'package:portfolio/view/layout/responsive_layout.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/portfolio/desktop_home.page.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/view/portfolio/mobile_home.page.dart';
import 'package:portfolio/view/responsive_layout/tablet_view/view/portfolio/tablet_home.page.dart';
import 'package:sizer/sizer.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        ToastContext().init(context);
        return MaterialApp(
          title: 'Portfolio',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const ResponsiveLayout(
            mobileView: MobileHomepage(),
            tabletView: TabletHomePage(),
            desktopView: DesktopHomepage(),
          ),
        );
      },
    );
  }
}
