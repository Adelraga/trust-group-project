import 'package:flutter/material.dart';
import '../../../cors/Routing/routes.dart';
import '../../../cors/Themeing/colors.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

class OnBoardingButton extends StatelessWidget {
  const OnBoardingButton({super.key, this.pagecontroller});
  final PageController? pagecontroller;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: 150.w,
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
            GoRouter.of(context).push(Routes.homeScreen);
          }
        },
        icon: Icon(Icons.arrow_forward, color: Colors.white),
        iconSize: 50.0,
      ),
    );
  }
}
