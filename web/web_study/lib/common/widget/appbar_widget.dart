import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:web_study/common/color/mukgen_color.dart';

class MainAppBarWidget extends StatelessWidget implements PreferredSizeWidget{
  final AppBar appBar;
  final String buttonText;
  const MainAppBarWidget({Key? key, required this.appBar, required this.buttonText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: MukGenColor.white,
      height: 88.h,
      width: 1920.w,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(width: 120.w),
          Expanded(
            child: Row(
              children: [
                Image.asset(
                  'assets/images/logo/MukGenDash.png',
                  height: 40.h,
                  width: 40.w,
                ),
                SizedBox(width: 5.w),
                Image.asset(
                  'assets/images/logo/Title.png',
                  height: 29.h,
                  width: 189.w,
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {

            },
            child: Container(
              height: 39.h,
              width: 96.w,
              decoration: BoxDecoration(
                color: MukGenColor.pointLight4,
                borderRadius: BorderRadius.circular(10.r),
              ),
              child: Center(
                child: Text(
                  buttonText,
                  style: TextStyle(
                    color: MukGenColor.pointBase,
                    fontSize: 16.sp,
                    fontFamily: 'MukgenSemiBold',
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: 120.w),
        ],
      ),
    );
  }
  @override
  Size get preferredSize => Size.fromHeight(appBar.preferredSize.height);
}
