import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class KarkastanFisa extends StatelessWidget {
  const KarkastanFisa({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 54, 54, 54),
              boxShadow: [
                BoxShadow(
                  color:
                      const Color.fromARGB(118, 158, 158, 158).withOpacity(0.4),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Image.asset(
              "assets/images/الفيزا الالكترونية.jpg",
              fit: BoxFit.cover,
            )));
  }
}
