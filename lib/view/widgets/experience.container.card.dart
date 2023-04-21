import 'package:flutter/material.dart';
import 'package:portfolio/view/widgets/app.styles.dart';
import 'package:sizer/sizer.dart';

class ExperienceContainerCard extends StatelessWidget {
  final String companyHeaderOne;
  final String companyHeaderTwo;
  final String designation;
  final String workDate;
  final String jobDescription;
  final String jobDescriptionTwo;
  const ExperienceContainerCard(
      {Key? key,
      required this.companyHeaderOne,
      required this.companyHeaderTwo,
      required this.designation,
      required this.workDate,
      required this.jobDescription,
      required this.jobDescriptionTwo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: 25.w,
          padding: EdgeInsets.fromLTRB(5.h, 5.h, 5.h, 5.h),
          decoration: BoxDecoration(
              color: const Color(0xff43cea2),
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(3.h),
                  topRight: Radius.circular(3.h)),
              border: Border.all(color: Colors.white)),
          child: Column(
            children: [
              Text(
                companyHeaderOne,
                style: AppStyles.instance.appDefaultHeader,
              ),
              SizedBox(height: 1.h),
              Text(
                companyHeaderTwo,
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
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                designation,
                style: AppStyles.instance.appDefaultHeader,
              ),
              SizedBox(height: 1.h),
              Text(
                workDate,
                style: AppStyles.instance.appDefaultHeader,
              ),
              SizedBox(height: 3.h),
              Text(
                jobDescription,
                style: AppStyles.instance.appDefaultHeader,
              ),
              SizedBox(height: 1.h),
              Text(jobDescriptionTwo,
                  style: AppStyles.instance.appDefaultHeader)
            ],
          ),
        ),
      ],
    );
  }
}
