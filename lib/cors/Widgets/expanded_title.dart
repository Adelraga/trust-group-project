import 'package:flutter/material.dart';
import 'package:trust_group_project/cors/Themeing/styles.dart';

import '../Themeing/colors.dart';

class ExpandedTitleItem extends StatelessWidget {
  final String title;
  final String description;
  const ExpandedTitleItem(
      {super.key, required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorsManager.secondaryColor,
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: Offset(0, 3),
          ),
        ],
      ),
      margin: EdgeInsets.only(top: 25),
      child: ExpansionTile(
        title: Text(title, style: TextStyles.font22BlackBold),
        children: description != null
            ? [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(description,
                      textAlign: TextAlign.center,
                      style: TextStyles.font20Text_input_grayBold),
                )
              ]
            : [],
      ),
    );
  }
}
