import 'package:flutter/material.dart';
import '../../../cors/Themeing/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key, this.pagecontroller});
  final PageController? pagecontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.h,
      width: 80.w,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: ColorsManager.primaryColor,
      ),
      child: IconButton(
        onPressed: () {
          if (pagecontroller!.page! < 1) {
            pagecontroller!.nextPage(
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOut);
          } else {
            // context.pushNamed(RoutesApp.login);
          }
        },
        icon: Icon(Icons.arrow_forward, color: Colors.white),
        iconSize: 30.0,
      ),
    );
  }
}
