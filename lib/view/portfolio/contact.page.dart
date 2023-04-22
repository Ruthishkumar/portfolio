import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio/view/widgets/app.button.dart';
import 'package:portfolio/view/widgets/app.styles.dart';
import 'package:portfolio/view/widgets/app.text.outline.dart';
import 'package:portfolio/view/widgets/toast.services.dart';
import 'package:sizer/sizer.dart';

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
              Column(
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
              SizedBox(
                width: 25.w,
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
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            const BorderSide(color: Colors.white, width: 1)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Color(0xff89fffd), width: 1)),
                    hintStyle: GoogleFonts.openSans(
                        fontSize: 4.sp,
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
          SizedBox(height: 8.sp),
          SizedBox(
              width: 10.w,
              child: AppButton(onPressed: getSummit, label: 'Submit')),
        ],
      ),
    );
  }

  /// validate controller
  bool validate() {
    if (nameController.text == '') {
      ToastServices().showError('Please Enter Name');
      log('Name Controller');
      return false;
    } else if (mailController.text == '') {
      return false;
    } else if (emailSubjectController.text == '') {
      return false;
    } else if (messageController.text == '') {
      return false;
    }
    return true;
  }

  /// summit button
  getSummit() {
    if (validate()) {
      log('SUCCESS');
    }
  }
}
