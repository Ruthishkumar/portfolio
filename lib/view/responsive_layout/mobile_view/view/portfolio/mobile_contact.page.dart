import 'dart:developer';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.button.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app.styles.dart';
import 'package:portfolio/view/responsive_layout/mobile_view/widgets/mobile_app_text.outline.dart';
import 'package:sizer/sizer.dart';
import 'package:toast/toast.dart';

class MobileContactPage extends StatefulWidget {
  const MobileContactPage({Key? key}) : super(key: key);

  @override
  State<MobileContactPage> createState() => _MobileContactPageState();
}

class _MobileContactPageState extends State<MobileContactPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailSubjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Contact',
              style: MobileAppStyles.instance.portfolioHeader,
            ),
            SizedBox(width: 1.w),
            Text(
              'Me!',
              style: MobileAppStyles.instance.contactMeColor,
            )
          ],
        ),
        SizedBox(height: 5.h),
        DelayedDisplay(
          slidingBeginOffset: const Offset(-1, 0),
          delay: const Duration(milliseconds: 1),
          child: Column(
            children: [
              SizedBox(
                  width: 55.w,
                  height: 10.h,
                  child: MobileAppTextOutline(
                      textInputAction: TextInputAction.next,
                      inputController: nameController,
                      hintText: 'Full Name')),
              SizedBox(
                width: 55.w,
                height: 10.h,
                child: MobileAppTextOutline(
                    isNumber: true,
                    textInputAction: TextInputAction.next,
                    inputController: phoneNumberController,
                    hintText: 'Mobile Number'),
              ),
              SizedBox(
                  width: 55.w,
                  height: 10.h,
                  child: MobileAppTextOutline(
                      inputController: mailController,
                      textInputAction: TextInputAction.next,
                      hintText: 'Email Id')),
              SizedBox(
                width: 55.w,
                height: 10.h,
                child: MobileAppTextOutline(
                    inputController: emailSubjectController,
                    textInputAction: TextInputAction.next,
                    hintText: 'Email Subject'),
              ),
              SizedBox(
                width: 55.w,
                height: 18.h,
                child: TextFormField(
                  maxLines: 10,
                  textInputAction: TextInputAction.done,
                  controller: messageController,
                  cursorHeight: 25,
                  cursorRadius: const Radius.circular(10),
                  inputFormatters: [
                    LengthLimitingTextInputFormatter(200),
                  ],
                  style: GoogleFonts.openSans(
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white),
                  decoration: InputDecoration(
                    hintText: 'Message',
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color(0xff136a8a), width: 1)),
                    hintStyle: GoogleFonts.openSans(
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xff78787D)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color(0xffD2D2D4), width: 1)),
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.h),
        DelayedDisplay(
            slidingBeginOffset: const Offset(1, 0),
            delay: const Duration(milliseconds: 2),
            child: MobileAppButton(onPressed: getSummit, label: 'Submit'))
      ],
    );
  }

  /// validate input field
  bool validate() {
    if (nameController.text == '') {
      showToast("Please enter your name", gravity: Toast.top);
      log('Name Controller');
      return false;
    } else if (mailController.text == '') {
      showToast("Please enter your mail Id", gravity: Toast.top);
      return false;
    } else if (emailSubjectController.text == '') {
      showToast("Please enter your mail subject", gravity: Toast.top);
      return false;
    } else if (messageController.text == '') {
      showToast("Please enter your message", gravity: Toast.top);
      return false;
    }
    return true;
  }

  /// summit button
  getSummit() async {
    log('SUCCESS');
    // await sendSMS(message: message, recipients: recipents, sendDirect: true)
    //     .catchError((onError) {
    //   print(onError);
    //   print('Error Message');
    // });
  }

  /// show toast function
  void showToast(String msg, {int? duration, int? gravity}) {
    Toast.show(msg,
        duration: duration,
        textStyle: GoogleFonts.aBeeZee(
            color: Colors.white,
            fontSize: 8.sp,
            fontWeight: FontWeight.w600,
            fontStyle: FontStyle.normal),
        gravity: gravity,
        webShowClose: true,
        backgroundRadius: 90,
        backgroundColor: Colors.cyanAccent);
  }
}
