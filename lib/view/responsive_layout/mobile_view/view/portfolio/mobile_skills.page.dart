import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.styles.dart';
import 'package:sizer/sizer.dart';

class MobileSkillsPage extends StatefulWidget {
  const MobileSkillsPage({Key? key}) : super(key: key);

  @override
  State<MobileSkillsPage> createState() => _MobileSkillsPageState();
}

class _MobileSkillsPageState extends State<MobileSkillsPage> {
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
            'Develop highly interactive front end/User Interface for your web and mobile applications'
      },
      {
        'title':
            'Integration of third party services such as Rest API/Firebase/GraphQl'
      },
    ];
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('What I do', style: MobileAppStyles.instance.skillSHeader),
          SizedBox(height: 1.h),
          Text(
            'Crazy full stack developer who wants to explore every tech stack'
                .toUpperCase(),
            style: MobileAppStyles.instance.skillsSubHeader,
          ),
          SizedBox(height: 3.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Wrap(
                spacing: 4.w,
                runSpacing: 4.w,
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
          SizedBox(height: 5.h),
          Lottie.asset(
            'assets/lottie/skills.json',
            height: 55.h,
          ),
          SizedBox(height: 4.h),
          educationWidget(),
        ],
      ),
    );
  }

  int selectedValue = -1;

  /// for loop for tech skills
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
                ? MobileAppStyles.instance.hover
                : MobileAppStyles.instance.skillTech,
          )
        ],
      ),
    );
  }

  /// for loop for skills descriptions
  skillsDescription(options) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 5.h,
              child: Image.asset(
                'assets/images/flash.png',
              ),
            ),
            Flexible(
              child: Text(
                options['title'],
                style: MobileAppStyles.instance.skillDs,
              ),
            )
          ],
        ),
        SizedBox(height: 2.h),
      ],
    );
  }

  /// education widget
  educationWidget() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text('Education', style: MobileAppStyles.instance.educationHeader),
      SizedBox(height: 4.sp),
      Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Image.asset(
          'assets/images/college_logo.png',
          height: 15.h,
        ),
        SizedBox(width: 3.w),
        Flexible(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'SRM Valliammai Engineering College',
                style: MobileAppStyles.instance.collegeName,
              ),
              SizedBox(height: 3.sp),
              Text(
                'BE - Electrical and Electronics Engineering',
                style: MobileAppStyles.instance.skillsSubHeader,
              ),
              SizedBox(height: 3.sp),
              Text(
                'August 2016 - November 2020',
                style: MobileAppStyles.instance.skillsSubHeader,
              ),
            ],
          ),
        )
      ])
    ]);
  }
}
