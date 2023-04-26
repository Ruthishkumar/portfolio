import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.button.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.styles.dart';
import 'package:sizer/sizer.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileProfilePage extends StatefulWidget {
  const MobileProfilePage({Key? key}) : super(key: key);

  @override
  State<MobileProfilePage> createState() => _MobileProfilePageState();
}

class _MobileProfilePageState extends State<MobileProfilePage> {
  @override
  Widget build(BuildContext context) {
    var socialProfileList = [
      {'image': 'assets/images/instagram_icon.png', 'id': 0},
      {'image': 'assets/images/linked_in_icon.png', 'id': 1},
      {'image': 'assets/images/git_hub_icon.png', 'id': 2},
    ];

    return Center(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Hello, It\'s me',
              style: MobileAppStyles.instance.homeHeader,
            ),
            SizedBox(height: 1.h),
            Text('Ruthish Kumar Hari',
                style: MobileAppStyles.instance.nameHeader),
            SizedBox(height: 1.h),
            Text('And I\'m a', style: MobileAppStyles.instance.homeHeader),
            SizedBox(height: 1.h),
            DefaultTextStyle(
              style: MobileAppStyles.instance.designationTitle,
              child: AnimatedTextKit(
                repeatForever: true,
                animatedTexts: [
                  TyperAnimatedText('Mobile Developer'),
                  TyperAnimatedText('Flutter Developer'),
                ],
              ),
            ),
            SizedBox(height: 2.h),
            Text(
              'A passionate Full Stack Software Developer having an experience of building Mobile and Web applications with Flutter/Dart/NodeJs and some other cool libraries and\nframeworks',
              style: MobileAppStyles.instance.homeHeader,
              textAlign: TextAlign.justify,
            ),
            SizedBox(height: 2.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Wrap(
                  spacing: 5.w,
                  runSpacing: 5.w,
                  children: [
                    for (int i = 0; i < socialProfileList.length; i++)
                      _socialProfile(socialProfileList[i])
                  ],
                )
              ],
            ),
            SizedBox(height: 4.h),
            MobileAppButton(
                onPressed: () {}, label: 'See my resume'.toUpperCase()),
            SizedBox(height: 5.h),
            Lottie.asset(
              'assets/lottie/hello.json',
              height: 55.h,
            ),
          ],
        ),
      ),
    );
  }

  int selectedValue = -1;

  int selectedIndex = -1;

  /// social profile for loop
  _socialProfile(options) {
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
                color: selectedValue == options['id']
                    ? const Color(0xff136a8a)
                    : selectedIndex == options['id']
                        ? const Color(0xff136a8a)
                        : Colors.white,
                border: Border.all(color: const Color(0xff136a8a))),
            child: Image.asset(
              options['image'],
              height: 5.h,
              color: Colors.black,
            )),
      ),
    );
  }

  /// redirect url with social profile
  launchUrl(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
