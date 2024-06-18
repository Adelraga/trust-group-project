import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../cors/Routing/routes.dart';
import 'home_grid_item.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';


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
            child: HomeGridItem(
              imagePath: "assets/images/خدماتنا.png",
              label: 'خدماتنا',
            ),
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.WhoWeAreView);
            },
            child: HomeGridItem(
              imagePath: "assets/images/من نحن.png",
              label: 'من نحن',
            ),
          ),
          HomeGridItem(
            imagePath: "assets/images/الدراسة في روسيا.png",
            label: 'الدراسة في روسيا',
          ),
          GestureDetector(
            onTap: () {
              GoRouter.of(context).push(Routes.KarkastanView);
            },
            child: HomeGridItem(
              imagePath: "assets/images/الدراسة ف قرغيزستان.png",
              label: 'الدراسة في قيرغيزستان',
            ),
          ),
          HomeGridItem(
            imagePath: "assets/images/تقييم.png",
            label: 'تقييم',
          ),
          HomeGridItem(
            imagePath: "assets/images/تعلم معنا.png",
            label: 'تعلم معنا',
          ),
        ],
      ),
    );
  }
}
