import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:portfolio/view/widgets/app.styles.dart';
import 'package:sizer/sizer.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var socialProfileList = [
      {'image': 'assets/images/instagram_icon.png', 'id': 0},
      {'image': 'assets/images/linked_in_icon.png', 'id': 1},
      {'image': 'assets/images/git_hub_icon.png', 'id': 2},
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DelayedDisplay(
                  slidingBeginOffset: const Offset(-1, 0),
                  delay: const Duration(milliseconds: 1),
                  child: Text(
                    'Hello, It\'s me',
                    style: AppStyles.instance.homeHeader,
                  ),
                ),
                SizedBox(height: 1.h),
                DelayedDisplay(
                  slidingBeginOffset: const Offset(-1, 0),
                  delay: const Duration(milliseconds: 2),
                  child: Text('Ruthish Kumar Hari',
                      style: AppStyles.instance.nameHeader),
                ),
                SizedBox(height: 1.h),
                DelayedDisplay(
                  slidingBeginOffset: const Offset(0, 1),
                  delay: const Duration(milliseconds: 2),
                  child: Row(
                    children: [
                      Text('And I\'m a', style: AppStyles.instance.homeHeader),
                      SizedBox(width: 1.w),
                      DefaultTextStyle(
                        style: AppStyles.instance.designationTitle,
                        child: AnimatedTextKit(
                          repeatForever: true,
                          animatedTexts: [
                            TyperAnimatedText('Mobile Developer'),
                            TyperAnimatedText('Flutter Developer'),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 3.h),
                DelayedDisplay(
                  slidingBeginOffset: const Offset(-1, 0),
                  delay: const Duration(milliseconds: 4),
                  child: Text(
                    'A passionate Full Stack Software Developer\nhaving an experience of building Mobile and \nWeb applications with Flutter/Dart/NodeJs\nand some other cool libraries and\nframeworks',
                    style: AppStyles.instance.homeHeader,
                  ),
                ),
                SizedBox(height: 3.h),
                Row(
                  children: [
                    Wrap(
                      spacing: 1.w,
                      runSpacing: 1.w,
                      children: [
                        for (int i = 0; i < socialProfileList.length; i++)
                          _socialProfile(socialProfileList[i])
                      ],
                    )
                  ],
                ),
                SizedBox(height: 4.h),
                MouseRegion(
                  opaque: false,
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: () {
                      launchUrl('https://drive.google.com/drive/u/0/my-drive');
                    },
                    child: Container(
                      padding: EdgeInsets.fromLTRB(2.h, 1.h, 2.h, 1.h),
                      decoration: BoxDecoration(
                          boxShadow: const [
                            BoxShadow(
                                color: Colors.white,
                                spreadRadius: 2,
                                blurRadius: 2)
                          ],
                          color: const Color(0xff26D0CE),
                          borderRadius:
                              BorderRadius.all(Radius.circular(16.sp))),
                      child: Text(
                        'See my resume'.toUpperCase(),
                        style: AppStyles.instance.appDefaultHeader,
                      ),
                    ),
                  ),
                )
              ],
            ),
            DelayedDisplay(
              slidingBeginOffset: const Offset(1, 0),
              delay: const Duration(milliseconds: 2),
              child: Lottie.asset(
                'assets/lottie/hello.json',
                height: 55.h,
              ),
            )
          ],
        )
      ],
    );
  }

  int selectedValue = -1;

  int selectedIndex = -1;

  /// social login
  _socialProfile(header) {
    return MouseRegion(
      opaque: false,
      cursor: SystemMouseCursors.click,
      onEnter: (details) {
        setState(() {
          selectedValue = header['id'];
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
            selectedIndex = header['id'];
          });
          if (selectedIndex == 0) {
            launchUrl('https://www.instagram.com/ruthish_17/');
          } else if (selectedIndex == 1) {
            launchUrl(
                'https://www.linkedin.com/in/ruthish-kumar-hari-0567631b9/');
          } else if (selectedIndex == 2) {
            launchUrl('https://github.com/Ruthishkumar');
          }
        },
        child: Container(
            padding: EdgeInsets.fromLTRB(1.h, 1.h, 1.h, 1.h),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedValue == header['id']
                    ? const Color(0xff26D0CE)
                    : selectedIndex == header['id']
                        ? const Color(0xff26D0CE)
                        : Colors.white,
                border: Border.all(color: const Color(0xff26D0CE))),
            child: Image.asset(
              header['image'],
              height: 5.h,
              color: Colors.black,
            )),
      ),
    );
  }

  /// redirect url with url
  launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
