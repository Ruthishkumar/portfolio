import 'dart:developer';

import 'package:delayed_display/delayed_display.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_sms/flutter_sms.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/app.button.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/app.styles.dart';
import 'package:portfolio/view/responsive_layout/desktop_view/view/widgets/app.text.outline.dart';
import 'package:sizer/sizer.dart';
import 'package:toast/toast.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController mailController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController emailSubjectController = TextEditingController();
  final TextEditingController messageController = TextEditingController();
  var focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 25.h),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contact',
                style: AppStyles.instance.portfolioHeader,
              ),
              SizedBox(width: 1.w),
              Text(
                'Me!',
                style: AppStyles.instance.contactMeColor,
              )
            ],
          ),
          SizedBox(height: 5.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DelayedDisplay(
                slidingBeginOffset: const Offset(-1, 0),
                delay: const Duration(milliseconds: 1),
                child: Column(
                  children: [
                    SizedBox(
                        width: 25.w,
                        height: 10.h,
                        child: AppTextOutline(
                            textInputAction: TextInputAction.next,
                            inputController: nameController,
                            hintText: 'Full Name')),
                    SizedBox(
                      width: 25.w,
                      height: 10.h,
                      child: AppTextOutline(
                          isNumber: true,
                          textInputAction: TextInputAction.next,
                          inputController: phoneNumberController,
                          hintText: 'Mobile Number'),
                    ),
                    SizedBox(
                        width: 25.w,
                        height: 10.h,
                        child: AppTextOutline(
                            inputController: mailController,
                            textInputAction: TextInputAction.next,
                            hintText: 'Email Id')),
                    SizedBox(
                      width: 25.w,
                      height: 10.h,
                      child: AppTextOutline(
                          inputController: emailSubjectController,
                          textInputAction: TextInputAction.done,
                          hintText: 'Email Subject'),
                    ),
                  ],
                ),
              ),
              DelayedDisplay(
                slidingBeginOffset: const Offset(1, 0),
                delay: const Duration(milliseconds: 2),
                child: SizedBox(
                  width: 25.w,
                  height: 37.h,
                  child: TextFormField(
                    maxLines: 10,
                    textInputAction: TextInputAction.done,
                    controller: messageController,
                    inputFormatters: [
                      LengthLimitingTextInputFormatter(200),
                    ],
                    style: GoogleFonts.openSans(
                        fontSize: 4.sp,
                        fontWeight: FontWeight.w400,
                        color: Colors.white),
                    decoration: InputDecoration(
                      hintText: 'Message',
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide:
                              const BorderSide(color: Colors.white, width: 1)),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xff136a8a), width: 1)),
                      hintStyle: GoogleFonts.openSans(
                          fontSize: 4.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff78787D)),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8),
                          borderSide: const BorderSide(
                              color: Color(0xffD2D2D4), width: 1)),
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 8.sp),
          DelayedDisplay(
            slidingBeginOffset: const Offset(0, 1),
            delay: const Duration(milliseconds: 2),
            child: SizedBox(
                width: 10.w,
                child: AppButton(onPressed: getSummit, label: 'Submit')),
          ),
        ],
      ),
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

  String message = "This is a test message!";
  List<String> recipents = ["8248748153", "8382983921"];

  /// summit button
  getSummit() async {
    if (validate()) {
      log('SUCCESS');
      await sendSMS(message: message, recipients: recipents, sendDirect: true)
          .catchError((onError) {
        print(onError);
        print('Error Message');
      });
    }
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
