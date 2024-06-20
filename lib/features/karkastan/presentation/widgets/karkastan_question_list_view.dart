import 'package:flutter/material.dart';

import '../../../../cors/Widgets/expanded_title.dart';

class KarkastanQuestionListView extends StatelessWidget {
  const KarkastanQuestionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return ExpandedTitleItem(
            title: " ما هي التأشيرة الالكترونية الأولي؟",
            description:
                "✔ تستغرق عادة 10 ايام عمل من تاريخ تقديمك للمستندات والرسوم المبدئية وقد تصل في بعض الاحيان لمدة شهر",
          );
        },
        childCount: 10,
      ),
    );
  }
}
