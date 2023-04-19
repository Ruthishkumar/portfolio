import 'package:flutter/material.dart';
import 'package:portfolio/view/widgets/app.styles.dart';
import 'package:portfolio/view/widgets/app.text.outline.dart';
import 'package:sizer/sizer.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({Key? key}) : super(key: key);

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final TextEditingController fullName = TextEditingController();
  final TextEditingController emailAddress = TextEditingController();
  final TextEditingController phoneNumber = TextEditingController();
  final TextEditingController emailSubject = TextEditingController();
  final TextEditingController message = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SizedBox(height: 3.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 80.sp,
                height: 9.sp,
                child: AppTextOutline(
                    inputController: fullName, hintText: 'Full Name')),
            SizedBox(
              width: 80.sp,
              height: 9.sp,
              child: AppTextOutline(
                  inputController: emailAddress, hintText: 'Full Name'),
            ),
          ],
        ),
        SizedBox(height: 10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
                width: 80.sp,
                height: 9.sp,
                child: AppTextOutline(
                    inputController: phoneNumber, hintText: 'Full Name')),
            SizedBox(
              width: 80.sp,
              height: 9.sp,
              child: AppTextOutline(
                  inputController: emailSubject, hintText: 'Full Name'),
            ),
          ],
        ),
      ],
    );
  }
}
