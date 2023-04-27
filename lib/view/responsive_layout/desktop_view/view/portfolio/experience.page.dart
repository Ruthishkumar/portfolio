import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
          DelayedDisplay(
            slidingBeginOffset: const Offset(-1, 0),
            delay: const Duration(milliseconds: 1),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(1.h)),
                      border: Border.all(
                          color: const Color(0xff01AFAB).withOpacity(0.4))),
                  child: ExperienceContainerCard(
                    companyHeaderOne: 'Deepsense Digital Solutions',
                    companyLocation: 'Chennai',
                    designation: 'Mobile Developer',
                    workDate: 'May 2022 - Present',
                    jobDescription:
                        'Developed a real time mobile applications using Flutter, Dart',
                    jobDescriptionTwo:
                        'Integrate third party services as such GraphQl API, Firebase',
                    backGroundColor: const Color(0xff01AFAB),
                    companyLogo: Image.asset(
                      'assets/images/deepsense_logo.png',
                      height: 70,
                    ),
                  ),
                ),
                SizedBox(width: 4.w),
                Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(1.h)),
                      border: Border.all(
                          color: const Color(0xff833ab4).withOpacity(0.4))),
                  child: ExperienceContainerCard(
                    companyHeaderOne: 'Central Apps',
                    companyLocation: 'Chennai',
                    designation: 'Flutter Developer',
                    workDate: 'May 2021 - April 2022',
                    jobDescription:
                        'Build time mobile applications using Flutter, Dart',
                    jobDescriptionTwo:
                        'Integrate third party services as Rest API, Firebase',
                    backGroundColor: const Color(0xff833ab4),
                    companyLogo: Text(
                      'CA'.toUpperCase(),
                      style: GoogleFonts.openSans(
                          color: Colors.black,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold,
                          fontSize: 6.sp),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
