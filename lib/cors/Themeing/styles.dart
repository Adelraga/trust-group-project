import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trust_group_project/cors/Themeing/colors.dart';

abstract class TextStyles {
  static TextStyle font20BlackBold = TextStyle(
    fontSize: 20.sp,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.bold,
    color: Colors.black,
  );
  static TextStyle font18Text_input_grayBold = TextStyle(
    fontSize: 18.sp,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.bold,
    color: ColorsManager.Text_input_gray,
  );
  static TextStyle font50WhiteBold = TextStyle(
    fontSize: 50.sp,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    fontFamily: 'Cairo',
  );
  static TextStyle font20Text_input_grayBold = TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
      color: ColorsManager.Text_input_gray);

  static TextStyle font22BlackBold = TextStyle(
      fontSize: 22,
      fontWeight: FontWeight.bold,
      fontFamily: 'Cairo',
      color: Colors.black);

  static TextStyle font18BlackBold = TextStyle(
      fontSize: 18,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      fontFamily: "Cairo");
}
