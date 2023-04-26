import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/app.styles.dart';
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

    var skillsDetails = [
      {
        'title':
            'Develop highly interactive front end/User Interface for your web\nand mobile applications'
      },
      {
        'title':
            'Integration of third party services such as Rest API/Firebase/\nGraphQl'
      },
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  DelayedDisplay(
                    slidingBeginOffset: const Offset(-1, 0),
                    delay: const Duration(milliseconds: 1),
                    child: Lottie.asset(
                      'assets/lottie/skills.json',
                      height: 55.h,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  DelayedDisplay(
                    slidingBeginOffset: const Offset(1, 0),
                    delay: const Duration(milliseconds: 2),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('What I do',
                            style: AppStyles.instance.skillSHeader),
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
                        ),
                        SizedBox(height: 3.h),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            for (int i = 0; i < skillsDetails.length; i++)
                              skillsDescription(skillsDetails[i])
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ],
          ),
          SizedBox(height: 12.h),
          educationBackgroundWidget(),
        ],
      ),
    );
  }

  int selectedValue = -1;

  /// skills stack with for loop
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
          SizedBox(height: 3.h),
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

  skillsDescription(options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            SizedBox(
              height: 5.h,
              child: Image.asset(
                'assets/images/flash.png',
              ),
            ),
            Text(
              options['title'],
              style: AppStyles.instance.skillDs,
            )
          ],
        ),
        SizedBox(height: 2.h),
      ],
    );
  }

  educationBackgroundWidget() {
    return DelayedDisplay(
      slidingBeginOffset: const Offset(0, 1),
      delay: const Duration(milliseconds: 2),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Education', style: AppStyles.instance.educationHeader),
          SizedBox(height: 4.sp),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                'assets/images/college_logo.png',
                height: 16.h,
              ),
              SizedBox(width: 3.w),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'SRM Valliammai Engineering College',
                    style: AppStyles.instance.collegeName,
                  ),
                  SizedBox(height: 3.sp),
                  Text(
                    'BE - Electrical and Electronics Engineering',
                    style: AppStyles.instance.skillsSubHeader,
                  ),
                  SizedBox(height: 3.sp),
                  Text(
                    'August 2016 - November 2020',
                    style: AppStyles.instance.skillsSubHeader,
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
