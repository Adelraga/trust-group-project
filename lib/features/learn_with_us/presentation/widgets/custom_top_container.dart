import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTopContainer extends StatelessWidget {
  const CustomTopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 290.h,
      // decoration: BoxDecoration(
      //   color: Colors.white,
      //   borderRadius: BorderRadius.only(
      //     bottomLeft: Radius.circular(50),
      //     bottomRight: Radius.circular(50),
      //   ),
      //   boxShadow: [
      //     BoxShadow(
      //       color: Color.fromARGB(114, 173, 173, 173).withOpacity(0.5),
      //       spreadRadius: 5,
      //       blurRadius: 7,
      //       offset: Offset(0, 3),
      //     ),
      //   ],
      // ),
      child: Image.asset(
        "assets/images/learn-with-us.png",
        fit: BoxFit.fill,
      ),
    );
}
}