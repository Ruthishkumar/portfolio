import 'package:flutter/material.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/app.styles.dart';
import 'package:sizer/sizer.dart';

class ExperienceContainerCard extends StatelessWidget {
  final String companyHeaderOne;
  final String companyLocation;
  final String designation;
  final String workDate;
  final String jobDescription;
  final String jobDescriptionTwo;
  final Color backGroundColor;
  final Widget companyLogo;
  const ExperienceContainerCard(
      {Key? key,
      required this.companyHeaderOne,
      required this.companyLocation,
      required this.designation,
      required this.workDate,
      required this.jobDescription,
      required this.jobDescriptionTwo,
      required this.backGroundColor,
      required this.companyLogo})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1.h),
            topRight: Radius.circular(1.h),
          ),
          child: Container(
            width: 25.w,
            padding: EdgeInsets.fromLTRB(3.h, 5.h, 3.h, 5.h),
            decoration: BoxDecoration(
              color: backGroundColor,
              border: const Border(
                  top: BorderSide(color: Colors.white),
                  left: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white)),
            ),
            child: Column(
              children: [
                Text(
                  companyHeaderOne,
                  style: AppStyles.instance.companyName,
                ),
                SizedBox(height: 1.h),
                Text(
                  companyLocation,
                  style: AppStyles.instance.companyLocation,
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 17.h),
            height: 12.h,
            width: 12.h,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Center(child: companyLogo)),
        Container(
          width: 25.w,
          padding: EdgeInsets.fromLTRB(5.h, 33.h, 5.h, 5.h),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(1.h)),
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
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3.h,
                    child: Image.asset(
                      'assets/images/flash.png',
                    ),
                  ),
                  SizedBox(width: 1.h),
                  Flexible(
                    child: Text(
                      jobDescription,
                      style: AppStyles.instance.appDefaultHeader,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 1.h),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 3.h,
                    child: Image.asset(
                      'assets/images/flash.png',
                    ),
                  ),
                  SizedBox(width: 1.h),
                  Flexible(
                    child: Text(jobDescriptionTwo,
                        style: AppStyles.instance.appDefaultHeader),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
