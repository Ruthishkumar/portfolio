import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class MobileAppStyles {
  static final MobileAppStyles _singleton = MobileAppStyles._internal();

  MobileAppStyles._internal();

  static MobileAppStyles get instance => _singleton;

  final TextStyle? portfolioHeader = GoogleFonts.heebo(
      fontWeight: FontWeight.w500,
      fontSize: 20.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? drawerDefaultTile = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 15.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? drawerHoverTile = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 15.sp,
      fontStyle: FontStyle.normal,
      color: const Color(0xff136a8a));

  final TextStyle homeHeader = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 22.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? nameHeader = GoogleFonts.poppins(
      fontWeight: FontWeight.w700,
      fontSize: 25.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle designationTitle = GoogleFonts.poppins(
      fontWeight: FontWeight.w500,
      fontSize: 22.sp,
      fontStyle: FontStyle.normal,
      color: const Color(0xff136a8a));

  final TextStyle? appDefaultHeader = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 16.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? appDesignationHeader = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 13.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? skillSHeader = GoogleFonts.heebo(
      fontWeight: FontWeight.w300,
      fontSize: 28.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? skillsSubHeader = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 20.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? hover = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 8.sp,
      fontStyle: FontStyle.normal,
      color: const Color(0xff3498db));

  final TextStyle? skillTech = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 8.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? skillDs = GoogleFonts.poppins(
      fontWeight: FontWeight.w400,
      fontSize: 15.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? educationHeader = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      fontSize: 25.sp,
      color: Colors.white);

  final TextStyle? collegeName = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      fontSize: 18.sp,
      color: Colors.white);

  final TextStyle? projectHeader = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w500,
      fontSize: 15.sp,
      color: Colors.white);

  final TextStyle? projectDescription = GoogleFonts.poppins(
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w300,
      fontSize: 14.sp,
      color: Colors.white);

  final TextStyle? contactMeColor = GoogleFonts.heebo(
      fontWeight: FontWeight.w500,
      fontSize: 20.sp,
      fontStyle: FontStyle.normal,
      color: const Color(0xff136a8a));

  final TextStyle? companyName = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 14.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);

  final TextStyle? companyLocation = GoogleFonts.aBeeZee(
      fontWeight: FontWeight.w500,
      fontSize: 13.sp,
      fontStyle: FontStyle.normal,
      color: Colors.white);
}
