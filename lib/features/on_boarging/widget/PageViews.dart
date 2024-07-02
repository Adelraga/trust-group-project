import 'package:flutter/material.dart';
import '../../../cors/animation/bounsing_animation.dart';
import '../../../cors/animation/scal_animation.dart';
import 'Custom_PageVIewItem.dart';

class PageViewsApp extends StatelessWidget {
  PageViewsApp({
    super.key,
    this.controller,
  });
  PageController? controller;

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      controller: controller,
      children: const [
        // BounceFromBottomAnimation(delay: 6, child: topbar()),
        ScaleFadeAnimation(
          delay:3,
          child: PageViewItems(
              image: 'assets/images/onboarding1.png',
              subTitle:
                  "شركة TRUST GROUP للخدمات الطلابية للدراسة في الخارج نقدم جميع الخدمات الدراسية في العديد من الدول"),
        ),
        ScaleFadeAnimation(
          delay: 3,
          child: PageViewItems(
            image: 'assets/images/onboarding2.png',
            subTitle:
                'ابدا رحلتك الان من خلالنا  وادرس في افضل الجامعات الحكومية و الخاصة بالخارج  ',
          ),
        ),
      ],
    );
  }
}
