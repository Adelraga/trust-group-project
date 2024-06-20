import 'package:flutter/material.dart';

import '../../../../cors/Themeing/colors.dart';
import '../../../../cors/Themeing/styles.dart';
import 'package:url_launcher/url_launcher.dart';

class EnrollForm extends StatelessWidget {
  const EnrollForm({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        Uri url = Uri.parse(
            "https://docs.google.com/forms/d/e/1FAIpQLSc086UeVM4ohFT-d2yo_tmvHdvQwNZXATojJd0xAOnxBUd-Gg/viewform");
        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 100,
          width: 380,
          decoration: BoxDecoration(
            color: ColorsManager.secondaryColor,
            borderRadius: BorderRadius.circular(50),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              "https://docs.google.com/forms/d/e/1FAIpQLSc086UeVM4ohFT-d2yo_tmvHdvQwNZXATojJd0xAOnxBUd-Gg/viewform",
              style: TextStyles.font20BlackBold,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
