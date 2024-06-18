import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../../cors/Widgets/custom_divider.dart';
import '../../../who_we_are/presentation/widgets/intro_in_top.dart';
import 'custom_require_paper_section.dart';
import 'custom_top_video.dart';
import 'karkastan_arab_country_section.dart';

class KarkastanViewBody extends StatelessWidget {
  const KarkastanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: CustomTopVideo(),
          ),
          SliverToBoxAdapter(
            child: TitleWithDescriptionSection(
              title: "لماذا الدراسة في قرغيزستان؟",
              description:
                  "بفضل نظام قرغيزستان التعليمي عالي الجودة والميسور التكلفة، أصبحت قرغيزستان وجهة شعبية متزايدة للطلاب الأجانب الذين يسعون للحصول على تعليم جيد. حيث تقدم قيرغيزستان مزيجًا فريدًا من التعليم الحديث والقيم التقليدية. وتشتهر جامعاتها ببرامجها الأكاديمية المتقدمة وبيئتها متعددة الثقافات. توفر الدراسة هنا التعرف على مجتمع طلابي متنوع، مما يعزز منظورك العالمي",
            ),
          ),
          SliverToBoxAdapter(
            child: CustomDivider(),
          ),
          SliverToBoxAdapter(
            child: KarkastanArabCountrySection(),
          ),
          SliverToBoxAdapter(
            child: CustomDivider(),
          ),
          SliverToBoxAdapter(
            child: CustomRequirePaperSection(),
          ),
          SliverToBoxAdapter(
            child: CustomDivider(),
          ),
        ],
      ),
    );
  }
}
