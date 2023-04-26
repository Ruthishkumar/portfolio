import 'dart:developer';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/view/portfolio/mobile_contact.page.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/view/portfolio/mobile_experience.page.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/view/portfolio/mobile_profile.page.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/view/portfolio/mobile_project.page.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/view/portfolio/mobile_skills.page.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.styles.dart';
import 'package:sizer/sizer.dart';

class MobileHomepage extends StatefulWidget {
  const MobileHomepage({Key? key}) : super(key: key);

  @override
  State<MobileHomepage> createState() => _MobileHomepageState();
}

class _MobileHomepageState extends State<MobileHomepage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  int selectedValue = 3;

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Map> newData = [
      {'profileHeader': 'Home', 'id': 0},
      {'profileHeader': 'Skills', 'id': 1},
      {'profileHeader': 'Work Experience', 'id': 2},
      {'profileHeader': 'Projects', 'id': 3},
      {'profileHeader': 'Contact', 'id': 4},
    ];
    return Scaffold(
        key: _scaffoldKey,
        backgroundColor: const Color(0xff1E1E26),
        endDrawer: DelayedDisplay(
          slidingBeginOffset: const Offset(1, 0),
          delay: const Duration(milliseconds: 2),
          child: Drawer(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomLeft: Radius.circular(20)),
            ),
            elevation: 10,
            backgroundColor: const Color(0xff1E1E26),
            child: Column(
              children: [
                ListTile(
                  trailing: Icon(Icons.close, color: Colors.white, size: 4.h),
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                ),
                ListView.builder(
                    itemCount: newData.length,
                    shrinkWrap: true,
                    itemBuilder: (BuildContext context, int index) {
                      return ListTile(
                        leading: MouseRegion(
                          cursor: SystemMouseCursors.click,
                          onEnter: (details) {
                            setState(() {
                              selectedValue = newData[index]['id'];
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
                                selectedIndex = newData[index]['id'];
                              });
                            },
                            child: Text(newData[index]['profileHeader'],
                                style: selectedIndex == newData[index]['id']
                                    ? MobileAppStyles.instance.drawerHoverTile
                                    : selectedValue == newData[index]['id']
                                        ? MobileAppStyles
                                            .instance.drawerHoverTile
                                        : MobileAppStyles
                                            .instance.drawerDefaultTile),
                          ),
                        ),
                        onTap: () {
                          log(newData[index]['id'].toString());
                          log('Selected Value');
                        },
                      );
                    })
              ],
            ),
          ),
        ),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: const Color(0xff1E1E26),
          title: DelayedDisplay(
            slidingBeginOffset: const Offset(-1, 0),
            delay: const Duration(milliseconds: 2),
            child: Container(
              padding: EdgeInsets.fromLTRB(2.h, 1.h, 3.h, 0.h),
              child: Text('<Portfolio/>',
                  style: MobileAppStyles.instance.portfolioHeader),
            ),
          ),
        ),
        body: Container(
          padding: EdgeInsets.fromLTRB(3.h, 5.h, 3.h, 5.h),
          child: _bodyWidget(),
        ));
  }

  /// body widget
  _bodyWidget() {
    if (selectedIndex == 0) {
      return const MobileContactPage();
    } else if (selectedIndex == 1) {
      return const MobileSkillsPage();
    } else if (selectedIndex == 2) {
      return const MobileExperiencePage();
    } else if (selectedIndex == 3) {
      return const MobileProjectPage();
    } else if (selectedIndex == 4) {
      return const MobileContactPage();
    }
  }
}
