import 'package:flutter/material.dart';
import 'package:trust_group_project/cors/Themeing/colors.dart';

import '../../../../cors/Helpers/spacing.dart';
import '../../../../cors/Themeing/styles.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30, left: 10, right: 10, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            ": للمزيد من المعلومات عبر موقعنا ",
            style: TextStyles.font20BlackBold,
          ),
          verticalSpace(10),
          Container(
            height: 60,
            width: 380,
            decoration: BoxDecoration(
              color: ColorsManager.secondaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset("assets/images/websiteicon.png"),
                Text(
                  "https://trust-group-ry.com/",
                  style: TextStyles.font20BlackBold,
                ),
              ],
            ),
          ),
          verticalSpace(30),
          Text(
            ": للتواصل معانا ",
            style: TextStyles.font20BlackBold,
          ),
          verticalSpace(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/images/facebook.png"),
              horizontalSpace(8),
              Image.asset("assets/images/telegram.png"),
              horizontalSpace(8),
              Image.asset("assets/images/whatapp.png"),
              horizontalSpace(8),
              Image.asset("assets/images/youtube.png"),
            ],
          )
        ],
      ),
    );
  }
}
