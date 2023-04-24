import 'package:flutter/material.dart';
import 'package:portfolio/view/portfolio/home.page.dart';
import 'package:sizer/sizer.dart';
import 'package:toast/toast.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, deviceType) {
        ToastContext().init(context);
        return MaterialApp(
          title: 'Portfolio',
          debugShowCheckedModeBanner: false,
          theme: ThemeData(primarySwatch: Colors.blue),
          home: const Homepage(),
        );
      },
    );
  }
}
