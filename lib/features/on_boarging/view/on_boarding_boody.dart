import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trust_group_project/cors/Themeing/styles.dart';

import '../../../cors/Helpers/spacing.dart';
import '../widget/Custom_Indicator.dart';
import '../widget/PageViews.dart';
import '../widget/onboarding_button.dart';

class OnBoardingBoody extends StatefulWidget {
  const OnBoardingBoody({super.key});

  @override
  State<OnBoardingBoody> createState() => _OnBoardingBoodyState();
}

class _OnBoardingBoodyState extends State<OnBoardingBoody> {
  PageController? pagecontroller;
  @override
  void initState() {
    pagecontroller = PageController(initialPage: 0)
      ..addListener(() {
        setState(() {});
      });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 5.h),
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          PageViewsApp(controller: pagecontroller),
          verticalSpace(5),
          Positioned(
              right: 10.w,
              top: 40.0.h,
              child: Visibility(
                visible: pagecontroller!.hasClients
                    ? pagecontroller!.page == 1
                        ? false
                        : true
                    : true,
                child: TextButton(
                  onPressed: () {
                    // context.pushReplacementNamed(RoutesApp.login);
                  },
                  child: Text("Skip", style: TextStyles.font18BlackBold),
                ),
              )),
          verticalSpace(5),
          Positioned(
              right: 125.w,
              bottom: 80.h,
              child: OnBoardingButton(
                pagecontroller: pagecontroller,
              )),
          verticalSpace(5),
          Positioned(
            right: 110.w,
            bottom: 20.h,
            child: CustomDotsIndicator(
              onTap: (p0) {
                pagecontroller!.jumpToPage(p0);
              },
              DotIndex: pagecontroller!.hasClients
                  ? pagecontroller!.page!.toInt()
                  : 0,
            ),
          ),
        ],
      ),
    );
  }
}
