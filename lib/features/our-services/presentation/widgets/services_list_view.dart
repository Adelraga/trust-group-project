import 'package:flutter/material.dart';

import '../../../../cors/Widgets/expanded_title.dart';

class ServicesListView extends StatelessWidget {
  const ServicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ExpandedTitleItem(
            title: "الاستشارة التعليمية",
            description:
                "فريقنا المختص سيقوم بتزويد الطالب بأفضل الخيارات المتاحة وأنسب الجامعات بحسب معدله وشهادته ( أيضل بشكل مجاني ) .",
          );
        },
        childCount: 10,
      ),
    );
  }
}
