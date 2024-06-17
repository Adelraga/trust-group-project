import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:trust_group_project/cors/Themeing/styles.dart';

class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300.h,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(50),
            bottomRight: Radius.circular(50),
          ),
          boxShadow: [
            BoxShadow(
              color: Color.fromARGB(114, 173, 173, 173).withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(0, 3),
            ),
          ],
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFFDEDEDE),
              Color(0xFFA2A9BC),
              Color(0xFF7E8AA7),
              Color(0xFF647199),
              Color(0xFF5C6A94),
              Color(0xFF3D4E82),
              Color(0xFF223673),
            ],
            stops: [0.0, 0.01, 0.27, 0.55, 0.65, 0.85, 1.0],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  'assets/images/خدماتنا.png',
                  fit: BoxFit.cover,
                  width: 150.w,
                ),
              ),
              Text(
                'خدماتنا',
                style: TextStyles.font50WhiteBold,
              ),
            ],
          ),
        ));
  }
}
