import 'package:flutter/cupertino.dart';

import '../../../../cors/Helpers/spacing.dart';
import '../../../../cors/Themeing/styles.dart';

class CustomRequirePaperSection extends StatelessWidget {
  const CustomRequirePaperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          "المستندات المطلوبة للتقديم للدراسة",
          style: TextStyles.font20BlackBold,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        verticalSpace(10),
        Text(
          "1- جواز السفر.  2- عدد 8 صورة شخصية بخلفية بيضاء.  3 - صورة من التأشيرة المبدأية القرغيزية والإقامة.  4 - شهادة الميلاد الأصلية وتكون موثقة من وزارة الخارجية من بلد اصدار الشهادة.  5- شهادة الثانوية وكشف الدرجات الأصلية وتكون موثقة من وزارة الخارجية من بلد اصدار الشهادة. 6 - ترجمة قانونية لجميع المستندات والشهادات في قرغيزستان.  7-  معادلة الشهادات من وزارة التعليم في قرغيزستان. 8- شهادة صحية من قرغيزستان.",
          style: TextStyles.font20Text_input_grayBold,
          textAlign: TextAlign.right,
          textDirection: TextDirection.rtl,
        ),
        verticalSpace(10),
      ],
    );
  }
}
