import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import '../../../cors/Themeing/colors.dart';

// ignore: must_be_immutable
class CustomDotsIndicator extends StatelessWidget {
  CustomDotsIndicator({
    @required this.DotIndex,
    @required this.onTap,
    super.key,
  });
  final int? DotIndex;
  void Function(int)? onTap;
  @override
  Widget build(BuildContext context) {
    return DotsIndicator(
      onTap: onTap,
      position: DotIndex!,
      dotsCount: 2,
      decorator: DotsDecorator(
          activeSize: const Size(44, 5),
          size: const Size(44, 5),
          color: ColorsManager.Text_input_gray,
          activeColor: ColorsManager.primaryColor,
          activeShape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(8),
            side: const BorderSide(
              color: Colors.transparent,
            ),
          )),
    );
  }
}
