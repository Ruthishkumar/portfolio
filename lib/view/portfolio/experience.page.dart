import 'package:flutter/material.dart';
import 'package:portfolio/view/widgets/app.styles.dart';
import 'package:portfolio/view/widgets/experience.container.card.dart';
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            children: [
              const ExperienceContainerCard(
                companyHeaderOne: 'Deepsense Digital Solutions',
                companyHeaderTwo: 'Pvt. Ltd',
                designation: 'Mobile Developer',
                workDate: 'May 2022 - Present',
                jobDescription:
                    'Developed a real time mobile applications using flutter,dart,firebase and Graphql API',
                jobDescriptionTwo: '',
              ),
              SizedBox(width: 4.w),
              Stack(
                alignment: Alignment.topCenter,
                children: [
                  Container(
                    width: 25.w,
                    padding: EdgeInsets.fromLTRB(5.h, 5.h, 5.h, 5.h),
                    decoration: BoxDecoration(
                        color: const Color(0xff2c3e50),
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(3.h),
                            topRight: Radius.circular(3.h)),
                        border: Border.all(color: Colors.white)),
                    child: Column(
                      children: [
                        Text(
                          'Deepsense Digital Solutions',
                          style: AppStyles.instance.appDefaultHeader,
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'Pvt. Ltd',
                          style: AppStyles.instance.appDefaultHeader,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 25.w,
                    padding: EdgeInsets.fromLTRB(5.h, 22.h, 5.h, 5.h),
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.all(Radius.circular(3.h)),
                        border: Border.all(color: Colors.white)),
                    child: Column(
                      children: [
                        Text(
                          'Mobile Developer',
                          style: AppStyles.instance.appDefaultHeader,
                        ),
                        SizedBox(height: 1.h),
                        Text(
                          'May 2022 - Present',
                          style: AppStyles.instance.appDefaultHeader,
                        ),
                        SizedBox(height: 3.h),
                        Text(
                          'Developed a real time mobile applications using flutter,dart,firebase and Graphql API',
                          style: AppStyles.instance.appDefaultHeader,
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
