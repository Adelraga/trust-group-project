import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trust_group_project/cors/Helpers/spacing.dart';
import 'package:trust_group_project/cors/Themeing/styles.dart';

class TitleWithDescriptionSection extends StatelessWidget {
  final String title;
  final String? description;
  const TitleWithDescriptionSection(
      {super.key, required this.title, this.description});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      verticalSpace(30),
      Text(
        title,
        textDirection: TextDirection.rtl,
        style: TextStyles.font25BlackBold,
        textAlign: TextAlign.center,
      ),
      SizedBox(height: 20.h),
      Text(
        description ?? "",
        textDirection: TextDirection.rtl,
        style: TextStyles.font18Text_input_grayBold,
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
