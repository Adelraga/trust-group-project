import 'package:flutter/material.dart';
import 'package:trust_group_project/cors/Widgets/expanded_title_loading/shimmer_loading.dart';

import '../../Themeing/colors.dart';

class ExpandedTitleItemShimmer extends StatelessWidget {
  const ExpandedTitleItemShimmer({Key? key}) : super(key: key);

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
        trailing: SizedBox(
            height: 30,
            child: ShimmerLoading(width: 30, height: 30),
        ),
        leading: ShimmerLoading(width: 30, height: 30), 
        title: ShimmerLoading(width: 100, height: 20),
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ShimmerLoading(width: double.infinity, height: 20),
          ),
        ],
      ),
    );
  }
}
