import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppTextOutline extends StatelessWidget {
  final TextInputAction? textInputAction;
  final TextEditingController inputController;
  final List<TextInputFormatter>? inputFormatters;
  final String hintText;
  final bool? isNumber;

  const AppTextOutline(
      {Key? key,
      this.textInputAction,
      required this.inputController,
      required this.hintText,
      this.inputFormatters,
      this.isNumber})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textInputAction: textInputAction,
        controller: inputController,
        cursorHeight: 25,
        cursorRadius: const Radius.circular(10),
        style: GoogleFonts.openSans(
            fontSize: 4.sp, fontWeight: FontWeight.w400, color: Colors.white),
        keyboardType: (isNumber ?? false)
            ? const TextInputType.numberWithOptions(decimal: true)
            : null,
        inputFormatters: ((isNumber ?? false) && inputFormatters == null)
            ? [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(10),
              ]
            : (inputFormatters != null)
                ? inputFormatters
                : null,
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
                borderRadius: BorderRadius.circular(8),
                borderSide: const BorderSide(color: Colors.white, width: 1)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: Color(0xff136a8a), width: 1)),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
                borderSide:
                    const BorderSide(color: Color(0xffD2D2D4), width: 1)),
            contentPadding: EdgeInsets.fromLTRB(2.h, 0.sp, 0.sp, 0.sp),
            hintStyle: GoogleFonts.openSans(
                fontSize: 4.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff78787D)),
            hintText: hintText));
  }
}
