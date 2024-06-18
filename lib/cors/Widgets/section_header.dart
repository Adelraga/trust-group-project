import 'package:flutter/material.dart';
import 'package:trust_group_project/cors/Themeing/styles.dart';

class SectionHeader extends StatelessWidget {
  final String Htitle;
  final TextAlign? textAlign;

  const SectionHeader({super.key, required this.Htitle, this.textAlign});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25, bottom: 25),
      child: Text(
        textDirection: TextDirection.rtl,
        Htitle,
        style: TextStyles.font22BlackBold,
        textAlign: textAlign,
      ),
    );
  }
}
