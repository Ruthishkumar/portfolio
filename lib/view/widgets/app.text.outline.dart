import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppTextOutline extends StatelessWidget {
  final TextInputAction? textInputAction;
  final TextEditingController inputController;
  final String hintText;

  const AppTextOutline(
      {Key? key,
      this.textInputAction,
      required this.inputController,
      required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textInputAction: textInputAction,
        controller: inputController,
        decoration: InputDecoration(
            filled: true,
            errorStyle: GoogleFonts.openSans(
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 12.sp,
                color: const Color(0xffF15252)),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(15),
              borderSide: const BorderSide(color: Color(0xffF15252)),
            ),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                    const BorderSide(color: Color(0xffD2D2D4), width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                    const BorderSide(color: Color(0xff7AD6D0), width: 1)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(15),
                borderSide:
                    const BorderSide(color: Color(0xffD2D2D4), width: 1)),
            contentPadding: EdgeInsets.fromLTRB(20.sp, 15.sp, 0.sp, 0.sp),
            labelStyle: GoogleFonts.openSans(
                color: const Color(0xff78787D),
                fontWeight: FontWeight.w400,
                fontStyle: FontStyle.normal,
                fontSize: 16.sp),
            hintStyle: GoogleFonts.openSans(
                fontSize: 8.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff78787D)),
            hintText: hintText));
    ;
  }
}
