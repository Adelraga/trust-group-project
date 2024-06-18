import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trust_group_project/features/karkastan/presentation/widgets/karkastan_view_body.dart';

class KarkastanView extends StatelessWidget {
  const KarkastanView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: KarkastanViewBody(),
    ));
  }
}