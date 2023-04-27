import 'package:flutter/material.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/app.styles.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.styles.dart';
import 'package:sizer/sizer.dart';

class MobileExperienceContainerCard extends StatelessWidget {
  final Color backGroundColor;
  final String companyHeaderOne;
  final String companyLocation;
  final Widget companyLogo;
  final String designation;
  final String workDate;
  final String jobDescription;
  final String jobDescriptionTwo;
  const MobileExperienceContainerCard(
      {Key? key,
      required this.backGroundColor,
      required this.companyHeaderOne,
      required this.companyLocation,
      required this.companyLogo,
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
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(1.h),
            topRight: Radius.circular(1.h),
          ),
          child: Container(
            width: 70.w,
            padding: EdgeInsets.fromLTRB(1.h, 5.h, 1.h, 5.h),
            decoration: BoxDecoration(
              color: backGroundColor,
              border: const Border(
                  top: BorderSide(color: Colors.white),
                  left: BorderSide(color: Colors.white),
                  right: BorderSide(color: Colors.white)),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  companyHeaderOne,
                  style: MobileAppStyles.instance.companyName,
                ),
                SizedBox(height: 1.h),
                Text(
                  companyLocation,
                  style: MobileAppStyles.instance.companyLocation,
                ),
                SizedBox(height: 4.h),
              ],
            ),
          ),
        ),
        Container(
            margin: EdgeInsets.only(top: 15.h),
            height: 12.h,
            width: 12.h,
            padding: const EdgeInsets.all(10),
            decoration: const BoxDecoration(
                color: Colors.white, shape: BoxShape.circle),
            child: Center(child: companyLogo)),
        Container(
          width: 70.w,
          padding: EdgeInsets.fromLTRB(5.h, 30.h, 5.h, 5.h),
          decoration: BoxDecoration(
              color: Colors.transparent,
              borderRadius: BorderRadius.all(Radius.circular(1.h)),
              border: Border.all(color: Colors.white)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                designation,
                style: MobileAppStyles.instance.appDesignationHeader,
              ),
              SizedBox(height: 1.h),
              Text(
                workDate,
                style: MobileAppStyles.instance.appDesignationHeader,
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
                      style: MobileAppStyles.instance.appDesignationHeader,
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
                        style: MobileAppStyles.instance.appDesignationHeader),
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
