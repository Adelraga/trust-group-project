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
  static TextStyle font18BlackBold = TextStyle(
    fontSize: 18.sp,
    fontFamily: 'Cairo',
    fontWeight: FontWeight.bold,
    color: ColorsManager.Text_input_gray,
  );

}
