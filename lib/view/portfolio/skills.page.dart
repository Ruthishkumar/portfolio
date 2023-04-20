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
      {
        'tech': 'assets/images/flutter_icon.png',
        'techTitle': 'Flutter',
        'id': 0
      },
      {'tech': 'assets/images/dart_icon.png', 'techTitle': 'Dart', 'id': 1},
      {
        'tech': 'assets/images/firebase_icon.png',
        'techTitle': 'Firebase',
        'id': 2
      },
      {'tech': 'assets/images/html.png', 'techTitle': 'Html-5', 'id': 3},
      {'tech': 'assets/images/css_icon.png', 'techTitle': 'Css-3', 'id': 4},
      {'tech': 'assets/images/node_icon.png', 'techTitle': 'Node js', 'id': 5},
    ];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          children: [
            Container(
              width: 300,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('What I do', style: AppStyles.instance.skillSHeader),
                SizedBox(height: 1.h),
                Text(
                    'Crazy full stack developer who wants to explore\nevery tech stack'
                        .toUpperCase(),
                    style: AppStyles.instance.skillsSubHeader),
                SizedBox(height: 2.h),
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
        ),
      ],
    );
  }

  int selectedValue = -1;

  _techStackDetails(options) {
    return MouseRegion(
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
      child: Column(
        children: [
          Image.asset(
            options['tech'],
            height: 6.h,
            color: selectedValue == options['id'] ? Colors.blue : Colors.white,
          ),
          SizedBox(height: 4.h),
          Text(
            options['techTitle'],
            style: selectedValue == options['id']
                ? AppStyles.instance.hover
                : AppStyles.instance.skillTech,
          )
        ],
      ),
    );
  }
}
