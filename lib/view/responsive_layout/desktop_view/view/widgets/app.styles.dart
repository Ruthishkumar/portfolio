import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class AppStyles {
  static final AppStyles _singleton = AppStyles._internal();
  AppStyles._internal();

  static AppStyles get instance => _singleton;

  final TextStyle? appDefaultHeader = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 4.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? companyName = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 5.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? companyLocation = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 4.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? appHoverHeader = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 4.sp,
      fontStyle: FontStyle.normal,
      color: const Color(0xff136a8a));

  final TextStyle? portfolioHeader = GoogleFonts.heebo(
      fontWeight: FontWeight.w500,
      fontSize: 7.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? skillSHeader = GoogleFonts.heebo(
      fontWeight: FontWeight.w300,
      fontSize: 10.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? skillsSubHeader = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 5.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? skillTech = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 2.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? hover = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 2.sp,
      fontStyle: FontStyle.normal,
      color: const Color(0xff3498db));

  final TextStyle? skillDs = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 4.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? contactMeColor = GoogleFonts.heebo(
      fontWeight: FontWeight.w500,
      fontSize: 7.sp,
      fontStyle: FontStyle.normal,
      color: const Color(0xff136a8a));

  final TextStyle homeHeader = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 5.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle designationTitle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 5.sp,
      fontStyle: FontStyle.normal,
      color: const Color(0xff136a8a));

  final TextStyle? nameHeader = GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
      fontSize: 8.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? educationHeader = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      fontSize: 13.sp,
      color: Colors.white);

  final TextStyle? collegeName = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      fontSize: 6.sp,
      color: Colors.white);

  final TextStyle? projectHeader = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 4.sp,
      color: Colors.white);

  final TextStyle? projectDescription = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      fontSize: 3.sp,
      color: Colors.white);
}
