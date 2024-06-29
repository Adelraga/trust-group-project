import 'package:flutter/material.dart';

import '../widgets/bloc_lisner.dart';
import '../widgets/rating_view_body.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Stack(
          children: [
            RatingViewBody(),
            LoginBlocListener(), // Ensure the listener is included in the widget tree
          ],
        ));
  }
}