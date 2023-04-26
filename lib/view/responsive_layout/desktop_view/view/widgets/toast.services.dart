import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:sizer/sizer.dart';

class ToastServices {
  static final ToastServices _singleton = ToastServices._internal();

  final GlobalKey<NavigatorState> globalKey = GlobalKey();

  factory ToastServices() {
    return _singleton;
  }
  ToastServices._internal();

  showError(String? msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      elevation: 0,
      backgroundColor: Colors.white,
      clipBehavior: Clip.none,
      duration: const Duration(seconds: 1),
      content: Container(
        padding: EdgeInsets.fromLTRB(5.sp, 20.sp, 5.sp, 0.sp),
        height: 90,
        decoration: BoxDecoration(
            boxShadow: const [
              BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.08),
                  spreadRadius: 7,
                  blurRadius: 12)
            ],
            color: Colors.white,
            borderRadius: BorderRadius.circular(16.sp),
            border: Border.all(color: const Color(0xffF4F4F4))),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(width: 15.sp),
            Flexible(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Error',
                      style: GoogleFonts.openSans(
                          fontWeight: FontWeight.w500,
                          fontSize: 18.sp,
                          color: const Color(0xff1E1E26))),
                  FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      msg ?? '',
                      style: GoogleFonts.openSans(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w400,
                          color: const Color(0xff78787D)),
                    ),
                  ),
                ],
              ),
            ),
            const Icon(
              Icons.close,
              color: Colors.black,
            )
          ],
        ),
      ),
    );
    ScaffoldMessenger.of(globalKey.currentContext!).showSnackBar(snackBar);
  }
}
