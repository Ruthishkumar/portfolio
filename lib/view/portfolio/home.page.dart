import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/portfolio/contact.page.dart';
import 'package:portfolio/view/portfolio/profile.page.dart';
import 'package:portfolio/view/widgets/app.styles.dart';
import 'package:sizer/sizer.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    var appBarHeader = [
      {'title': 'Home', 'id': 0},
      {'title': 'About', 'id': 1},
      {'title': 'Experience', 'id': 2},
      {'title': 'Skills', 'id': 3},
      {'title': 'Contact', 'id': 4},
    ];
    return Scaffold(
      backgroundColor: const Color(0xff182848),
      appBar: AppBar(
          centerTitle: false,
          leadingWidth: 300,
          backgroundColor: const Color(0xff061161),
          title: DelayedDisplay(
            slidingBeginOffset: const Offset(-1, 0),
            delay: const Duration(milliseconds: 2),
            child: Container(
              padding: EdgeInsets.fromLTRB(3.h, 0.h, 3.h, 0.h),
              child: Text(
                'Portfolio',
                style: AppStyles.instance.portfolioHeader,
              ),
            ),
          ),
          actions: [
            Container(
              padding: EdgeInsets.fromLTRB(3.h, 0.h, 3.h, 0.h),
              child: Row(
                children: [
                  Wrap(
                    spacing: 1.w,
                    runSpacing: 1.w,
                    children: [
                      for (int i = 0; i < appBarHeader.length; i++)
                        _appBar(appBarHeader[i])
                    ],
                  ),
                ],
              ),
            )
          ]),
      body: Container(
          padding: EdgeInsets.fromLTRB(20.h, 10.h, 20.h, 10.h),
          child: _bodyWidget()),
    );
  }

  int selectedValue = 0;

  int selectedIndex = 0;

  /// app bar widget
  _appBar(options) {
    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click,
      onEnter: (details) {
        setState(() {
          selectedValue = options['id'];
        });
      },
      onExit: (details) {
        setState(() {
          selectedValue = -1;
        });
      },
      child: GestureDetector(
          onTap: () {
            setState(() {
              selectedIndex = options['id'];
            });
          },
          child: DelayedDisplay(
            slidingBeginOffset: const Offset(1, 0),
            delay: const Duration(milliseconds: 2),
            child: Text(options['title'],
                style: selectedValue == options['id']
                    ? AppStyles.instance.appHoverHeader
                    : selectedIndex == options['id']
                        ? AppStyles.instance.appHoverHeader
                        : AppStyles.instance.appDefaultHeader),
          )),
    );
  }

  _bodyWidget() {
    if (selectedIndex == 0) {
      return const ProfilePage();
    } else if (selectedIndex == 4) {
      return const ContactPage();
    }
  }
}
