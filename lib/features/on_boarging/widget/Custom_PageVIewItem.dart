import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../cors/Helpers/spacing.dart';
import '../../../cors/Themeing/styles.dart';

class PageViewItems extends StatelessWidget {
  const PageViewItems({
    required this.image,
    required this.subTitle,
    super.key,
  });
  final String image;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10.w),
      child: Column(
        children: [
          verticalSpace(60.h),
          SizedBox(
            height: 360.h,
            width: 360.w,
            child: Image.asset(
              image,
              height: 100,
            ),
          ),
          SizedBox(
            height: 2.h,
          ),
          Text(
            subTitle,
            textAlign: TextAlign.center,
            textDirection: TextDirection.rtl,
            style: TextStyles.font20BlackBold,
          ),
        ],
      ),
    );
  }
}
