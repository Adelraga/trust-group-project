import 'package:flutter/cupertino.dart';
import 'package:trust_group_project/cors/Helpers/spacing.dart';
import 'package:trust_group_project/cors/Themeing/styles.dart';

class KarkastanArabCountrySection extends StatelessWidget {
  const KarkastanArabCountrySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10,
        ),
        Text(
          'فيما يخص الدول العربية فإن أغلب حاملي جوازات سفر الدول العربية يحتاجون الى تأشيرة للسفر الى قرغيزستان ما عدا 6 دول عربية حيث لا تحتاج الى تأشيرة ويمكن السفر مباشرة والاقامة لمدة 90 يوم وهذه الدول هي:',
          style: TextStyles.font20BlackBold,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        verticalSpace(10),
        Text(
          " 1. الإمارات العربية المتحدة  2.المملكة العربية السعودية  3. دولة الكويت   4.دولة قطر  5. سلطنة عُمان  6. مملكة البحرين  ",
          style: TextStyles.font20Text_input_grayBold,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
        verticalSpace(10),
        Text(
          "أما باقي الدول العربية، وخصوصاً المتقدمين للدراسة في قرغيزيا، فيتم إصدار تأشيرة طلابية مبدئية لمدة شهر عن طريق الجامعة المقدمة للقبول الجامعي وذلك لكي يتمكن الطالب من السفر الى قرغيزيا واستكمال إجراءات التسجيل الجامعي، ومن ثم يتم تمديد التأشير الطلابية السنوية وتسجيل إقامة طيلة فترة دراسته في الجامعة .",
          style: TextStyles.font20BlackBold,
          textAlign: TextAlign.center,
          textDirection: TextDirection.rtl,
        ),
      ],
    );
  }
}
