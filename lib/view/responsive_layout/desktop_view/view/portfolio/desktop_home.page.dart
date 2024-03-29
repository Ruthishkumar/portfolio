import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/portfolio/contact.page.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/portfolio/experience.page.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/portfolio/profile.page.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/portfolio/project.page.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/portfolio/skills.page.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/app.styles.dart';
import 'package:sizer/sizer.dart';

class DesktopHomepage extends StatefulWidget {
  const DesktopHomepage({Key? key}) : super(key: key);

  @override
  State<DesktopHomepage> createState() => _DesktopHomepageState();
}

class _DesktopHomepageState extends State<DesktopHomepage> {
  @override
  Widget build(BuildContext context) {
    var appBarHeader = [
      {'title': 'Home', 'id': 0},
      {'title': 'Skills', 'id': 1},
      {'title': 'Work Experience', 'id': 2},
      {'title': 'Projects', 'id': 3},
      {'title': 'Contact', 'id': 4},
    ];
    return Scaffold(
      backgroundColor: const Color(0xff1E1E26),
      appBar: AppBar(
          elevation: 0,
          centerTitle: false,
          leadingWidth: 250,
          toolbarHeight: 100,
          backgroundColor: const Color(0xff1E1E26),
          title: DelayedDisplay(
            slidingBeginOffset: const Offset(-1, 0),
            delay: const Duration(milliseconds: 2),
            child: Container(
              padding: EdgeInsets.fromLTRB(3.h, 0.h, 3.h, 0.h),
              child: Text(
                '<Portfolio/>',
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
          padding: EdgeInsets.fromLTRB(20.h, 5.h, 20.h, 20),
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
    } else if (selectedIndex == 1) {
      return const SkillsPage();
    } else if (selectedIndex == 2) {
      return const WorkExperience();
    } else if (selectedIndex == 3) {
      return const ProjectPage();
    } else if (selectedIndex == 4) {
      return const ContactPage();
    }
  }
}
