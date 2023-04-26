import 'package:flutter/material.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/experience.container.card.dart';
import 'package:sizer/sizer.dart';

class WorkExperience extends StatefulWidget {
  const WorkExperience({Key? key}) : super(key: key);

  @override
  State<WorkExperience> createState() => _WorkExperienceState();
}

class _WorkExperienceState extends State<WorkExperience> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 5.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const ExperienceContainerCard(
                companyHeaderOne: 'Deepsense Digital Solutions',
                companyHeaderTwo: 'Pvt. Ltd',
                designation: 'Mobile Developer',
                workDate: 'May 2022 - Present',
                jobDescription:
                    'Developed a real time mobile applications using Flutter, Dart',
                jobDescriptionTwo:
                    'Integrate third party services as such GraphQl API, Firebase',
                backGroundColor: Color(0xff43cea2),
              ),
              SizedBox(width: 4.w),
              const ExperienceContainerCard(
                companyHeaderOne: 'Central Apps',
                companyHeaderTwo: '',
                designation: 'Flutter Developer',
                workDate: 'May 2021 - April 2022',
                jobDescription:
                    'Build time mobile applications using Flutter, Dart',
                jobDescriptionTwo:
                    'Integrate third party services as Rest API, Firebase',
                backGroundColor: Color(0xffA83279),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
