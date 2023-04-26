import 'package:flutter/material.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.styles.dart';
import 'package:sizer/sizer.dart';

class MobileProjectPage extends StatefulWidget {
  const MobileProjectPage({Key? key}) : super(key: key);

  @override
  State<MobileProjectPage> createState() => _MobileProjectPageState();
}

class _MobileProjectPageState extends State<MobileProjectPage> {
  @override
  Widget build(BuildContext context) {
    var projectDetails = [
      {
        'projectTitle': 'Nuego'.toUpperCase(),
        'projectDescription':
            'Online bus booking app for allows to scheduling the routes,checking seat availability as well as user can view thes real time bus and users location with Map enables features.',
        'id': 0,
        'techUsed': 'Tech Used : Flutter/Dart/Firebase/GraphQl API'
      },
      {
        'projectTitle': 'Cricket Card League'.toUpperCase(),
        'projectDescription':
            'Multiplayer cricket card game with select numbers of card for 15,25 and 30.',
        'id': 1,
        'techUsed': 'Tech Used : Flutter/Dart/Firebase'
      },
      {
        'projectTitle': 'JobSeeker'.toUpperCase(),
        'projectDescription':
            'This app help you get the relevant jobs matching your profile and create a job alerts and start getting the latest.you can choose the membership via pay online.',
        'id': 2,
        'techUsed': 'Tech Used : Flutter/Dart/Rest API'
      },
      {
        'projectTitle': 'Mangos'.toUpperCase(),
        'projectDescription':
            'Book an appointment to the doctor via app and remind to take the medicine.',
        'id': 3,
        'techUsed': 'Tech Used : Flutter/Dart/Firebase/Rest API'
      },
      {
        'projectTitle': 'Epl'.toUpperCase(),
        'projectDescription':
            'Online loan for personal credit needs with flexible tenure and quick disbursal.',
        'id': 4,
        'techUsed': 'Tech Used : Flutter/Dart/Rest API'
      },
      {
        'projectTitle': 'Onion'.toUpperCase(),
        'projectDescription':
            'On demand cleaning and washing services at your step with Daily,Weekly and Monthly schedules.',
        'id': 5,
        'techUsed': 'Tech Used : Flutter/Dart/Firebase/Rest API'
      },
    ];
    return SingleChildScrollView(
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            for (int i = 0; i < projectDetails.length; i++)
              _projectBrief(projectDetails[i]),
          ],
        ),
      ),
    );
  }

  int selectedValue = -1;

  /// for loop for project brief
  _projectBrief(options) {
    return Column(
      children: [
        MouseRegion(
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
          child: Container(
            width: 80.w,
            padding: EdgeInsets.fromLTRB(2.h, 2.h, 2.h, 2.h),
            decoration: BoxDecoration(
                color: selectedValue == options['id']
                    ? const Color(0xff136a8a)
                    : Colors.black12,
                borderRadius: BorderRadius.all(Radius.circular(2.h)),
                boxShadow: [
                  BoxShadow(
                      color: selectedValue == options['id']
                          ? Colors.white
                          : Colors.transparent,
                      offset: const Offset(0, 0),
                      spreadRadius: selectedValue == options['id'] ? 3 : 0,
                      blurRadius: selectedValue == options['id'] ? 3 : 0)
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(Icons.tag_outlined, size: 3.h, color: Colors.white),
                    SizedBox(width: 1.w),
                    Text(options['projectTitle'],
                        style: MobileAppStyles.instance.projectHeader)
                  ],
                ),
                SizedBox(height: 2.h),
                Text(
                  options['projectDescription'],
                  style: MobileAppStyles.instance.projectDescription,
                ),
                SizedBox(height: 2.h),
                Text(
                  options['techUsed'],
                  style: MobileAppStyles.instance.projectDescription,
                ),
              ],
            ),
          ),
        ),
        SizedBox(height: 5.h),
      ],
    );
  }
}
