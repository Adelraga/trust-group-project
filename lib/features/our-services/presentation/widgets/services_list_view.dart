import 'package:flutter/material.dart';
import 'package:trust_group_project/features/our-services/logic/cubit/services_cubit.dart';

import '../../../../cors/Widgets/expanded_title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cors/Widgets/expanded_title_loading/expanded_title_item.dart';



class ServicesListView extends StatelessWidget {
  const ServicesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ServicesCubit, ServicesState>(
      builder: (context, state) {
        if(state is ServicesSuccess){

        return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ExpandedTitleItem(
                title: state.services[index].title??"",
                description:
                   state.services[index].description??"",
              );
            },
            childCount: state.services.length,
          ),
        );
        }
       else if (state is ServicesFailure) {
          return SliverToBoxAdapter(
            child: Text("${state.errMessage}"),
          );
        }
         return SliverList(
          delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
              return ExpandedTitleItemShimmer();
            },
            childCount: 5, // Number of shimmer items to show
          ),
         );
      },
    );
  }
}
