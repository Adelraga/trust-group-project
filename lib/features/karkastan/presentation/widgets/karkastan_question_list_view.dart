import 'package:flutter/material.dart';
import 'package:trust_group_project/features/karkastan/logic/common_question_cubit/get_common_question_cubit.dart';

import '../../../../cors/Widgets/expanded_title.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cors/Widgets/expanded_title_loading/expanded_title_item.dart';

class KarkastanQuestionListView extends StatelessWidget {
  const KarkastanQuestionListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetCommonQuestionCubit, GetCommonQuestionState>(
      builder: (context, state) {
        if (state is GetCommonQuestionSuccess) {
          return SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return ExpandedTitleItem(
                  title: state.commonQuestionList[index].quesion ?? "",
                  description: state.commonQuestionList[index].answer ?? "",
                );
              },
              childCount: state.commonQuestionList.length,
            ),
          );
        } else if (state is GetCommonQuestionFailure) {
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
