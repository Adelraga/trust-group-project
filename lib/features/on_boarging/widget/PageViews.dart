import 'package:flutter/material.dart';
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
        PageViewItems(
          image: 'assets/images/onboarding1.png',
          subTitle: "Trust Group للخدمات الطلابية للدراسة في الخارج نقدم جميع الخدمات الدراسية في العديد من الدول"
        ),
        PageViewItems(
          image: 'assets/images/onboarding2.png',

          subTitle:
              'ابدا رحلتك الان من خلالنا  وادرس في افضل الجامعات الحكومية و الخاصة بالخارج  ',
        ),
      ],
    );
  }
}
