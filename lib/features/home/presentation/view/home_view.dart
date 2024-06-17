import 'package:flutter/material.dart';
import '../widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 193, 193, 193),
              Color.fromARGB(9, 221, 221, 221), // Light grey color at the top
              Color.fromARGB(7, 222, 222, 222), // Dark blue color at the bottom
            ],
          ),
        ),
        child: HomeViewBody(),
      ),
    );
  }
}
