import 'package:flutter/material.dart';
import 'package:portfolio/view/widgets/app.styles.dart';
import 'package:sizer/sizer.dart';

class SkillsPage extends StatefulWidget {
  const SkillsPage({Key? key}) : super(key: key);

  @override
  State<SkillsPage> createState() => _SkillsPageState();
}

class _SkillsPageState extends State<SkillsPage> {
  @override
  Widget build(BuildContext context) {
    var techStack = [
      {'tech': 'assets/images/flutter_icon.png'},
      {'tech': 'assets/images/dart_icon.png'},
      {'tech': 'assets/images/firebase_icon.png'},
      {'tech': 'assets/images/html.png'},
      {'tech': 'assets/images/html.png'},
    ];
    return Row(
      children: [
        Container(
          width: 300,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('What I do', style: AppStyles.instance.portfolioHeader),
            SizedBox(height: 3.h),
            Row(
              children: [
                Wrap(
                  spacing: 1.w,
                  runSpacing: 1.w,
                  children: [
                    for (int i = 0; i < techStack.length; i++)
                      _techStackDetails(techStack[i])
                  ],
                )
              ],
            )
          ],
        )
      ],
    );
  }

  _techStackDetails(options) {
    return Image.asset(
      options['tech'],
      height: 5.h,
      color: Colors.white,
    );
  }
}
