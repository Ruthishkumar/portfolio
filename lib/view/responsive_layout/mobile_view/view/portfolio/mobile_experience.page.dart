import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_experience_container_card.dart';
import 'package:sizer/sizer.dart';

class MobileExperiencePage extends StatefulWidget {
  const MobileExperiencePage({Key? key}) : super(key: key);

  @override
  State<MobileExperiencePage> createState() => _MobileExperiencePageState();
}

class _MobileExperiencePageState extends State<MobileExperiencePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: DelayedDisplay(
        slidingBeginOffset: const Offset(-1, 0),
        delay: const Duration(milliseconds: 2),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(1.h)),
                    border: Border.all(
                        color: const Color(0xff01AFAB).withOpacity(0.4))),
                child: MobileExperienceContainerCard(
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
            ),
            SizedBox(height: 3.h),
            Center(
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(1.h)),
                    border: Border.all(
                        color: const Color(0xff833ab4).withOpacity(0.4))),
                child: MobileExperienceContainerCard(
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
                        fontSize: 20.sp),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
