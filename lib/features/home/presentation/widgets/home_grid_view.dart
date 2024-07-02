import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../cors/Routing/routes.dart';
import '../../../../cors/animation/fade_animation.dart';
import 'home_grid_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';



class HomeGridView extends StatelessWidget {
  const HomeGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 1,
        childAspectRatio: 1,
      ),
      delegate: SliverChildListDelegate(
        [
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.OurServicesView);
            },
            child: FadeAnimation(
              delay: 1,
              child: HomeGridItem(
                imagePath: "assets/images/خدماتنا.png",
                label: 'خدماتنا',
              ),
            )
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.WhoWeAreView);
            },
            child: FadeAnimation(
              delay: 1.2,
              child: HomeGridItem(
                imagePath: "assets/images/من نحن.png",
                label: 'من نحن',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.RussainView);
            },
            child: FadeAnimation(
              delay: 1.3,
              child: HomeGridItem(
                imagePath: "assets/images/الدراسة في روسيا.png",
                label: 'الدراسة في روسيا',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.KarkastanView);
            },
            child: FadeAnimation(
              delay: 1.4,
              child: HomeGridItem(
                imagePath: "assets/images/الدراسة ف قرغيزستان.png",
                label: 'الدراسة في قيرغيزستان',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.RatingView);
            },
            child: FadeAnimation(
              delay: 1.5,
              child: HomeGridItem(
                imagePath: "assets/images/تقييم.png",
                label: 'تقييم',
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.LearnWithUsView);
            },
            child: FadeAnimation(
              delay: 1.6,
              child: HomeGridItem(
                imagePath: "assets/images/تعلم معنا.png",
                label: 'تعلم معنا',
              ),
            ),
          ),
        ],
      ),
    );
  }
}

