import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_study/common/color/mukgen_color.dart';
import 'package:web_study/common/widget/appbar_widget.dart';
import 'package:web_study/screen/main/widget/suggestion/main_suggestion_widget.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MukGenColor.primaryLight3,
      appBar: MainAppBarWidget(appBar: AppBar(), buttonText: '로그아웃'),
      body: Column(
        children: [
          SizedBox(height: 40.0.h),
          Row(
            children: [
              SizedBox(width: 120.w),
              const MainSuggestionWidget(),
            ],
          )
        ],
      ),
    );
  }
}
