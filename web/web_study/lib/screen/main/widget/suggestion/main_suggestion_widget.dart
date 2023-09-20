import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_study/common/color/mukgen_color.dart';
import 'package:web_study/screen/main/widget/suggestion/main_suggestion_box.dart';

class MainSuggestionWidget extends StatefulWidget {
  const MainSuggestionWidget({Key? key}) : super(key: key);

  @override
  State<MainSuggestionWidget> createState() => _MainSuggestionWidgetState();
}

class _MainSuggestionWidgetState extends State<MainSuggestionWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 460.w,
      child: Column(
        children: [
          SizedBox(height: 24.0.h),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              '급식 건의',
              style: TextStyle(
                color: MukGenColor.black,
                fontSize: 24.sp,
                fontFamily: 'MukgenSemiBold',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(height: 24.0.h),
          const MainSuggestionBox(),
          SizedBox(height: 14.h),
          const MainSuggestionBox(),
          SizedBox(height: 14.h),
          const MainSuggestionBox(),
          SizedBox(height: 14.h),
          const MainSuggestionBox(),
        ],
      ),
    );
  }
}
