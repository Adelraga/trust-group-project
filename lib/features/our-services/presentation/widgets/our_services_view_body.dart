import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:trust_group_project/features/our-services/presentation/widgets/serview_view_top_container.dart';

import 'contact_section.dart';
import 'services_list_view.dart';

class OurServicesViewBody extends StatelessWidget {
  const OurServicesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: TopContainer(),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(20),
          sliver: ServicesListView(),
        ),
        SliverToBoxAdapter(
          child: ContactSection(),
        ),
      ],
    );
  }
}
