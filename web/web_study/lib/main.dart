import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_study/screen/main/main_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const ScreenUtilInit(
      designSize: Size(1920, 1080),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'MUKGEN',
        home: MainPage(),
      ),
    );
  }
}
