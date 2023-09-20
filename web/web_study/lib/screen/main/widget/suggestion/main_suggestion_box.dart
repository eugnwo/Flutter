import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_study/common/color/mukgen_color.dart';

class MainSuggestionBox extends StatelessWidget {
  const MainSuggestionBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.h,
      width: 460.w,
      decoration: BoxDecoration(
        color: MukGenColor.white,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 24.w, top: 24.h),
              child: Text(
                '시리얼 금지, 아침은 무조건 국물과 밥',
                style: TextStyle(
                  color: MukGenColor.black,
                  fontSize: 16.sp,
                  fontFamily: 'MukgenRegular',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 24.w, top: 20.h),
                  child: Text(
                    '이태영',
                    style: TextStyle(
                      color: MukGenColor.primaryDark1,
                      fontSize: 14.sp,
                      fontFamily: 'MukgenRegular',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 24.w, top: 20.h),
                  child: Text(
                    '23.05.07 10:32',
                    style: TextStyle(
                      color: MukGenColor.primaryDark1,
                      fontSize: 14.sp,
                      fontFamily: 'MukgenRegular',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}