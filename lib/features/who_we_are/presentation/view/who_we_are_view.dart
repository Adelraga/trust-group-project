import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust_group_project/features/who_we_are/presentation/widgets/who_we_are_view_body.dart';

class WhoWeAreView extends StatelessWidget {
  const WhoWeAreView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: WhoWeAreViewBody(),
      ),
    );
  }
}
