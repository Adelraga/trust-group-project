import 'package:flutter/material.dart';
import 'home_body_top_container.dart';
import 'home_grid_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: TopContainer(),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(30),
          sliver: HomeGridView(),
        ),
      ],
    );
  }
}
