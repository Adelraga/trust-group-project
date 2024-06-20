import 'package:flutter/material.dart';

import '../widgets/rating_view_body.dart';

class RatingView extends StatelessWidget {
  const RatingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RatingViewBody(),
    );
  }
}