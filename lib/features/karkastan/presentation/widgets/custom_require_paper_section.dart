import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../../cors/Helpers/spacing.dart';
import '../../../../cors/Themeing/styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../logic/show_karkastan_require_paper_cubit/show_karkastan_require_paper_cubit.dart';
import 'custom_paper_require_shimmer_loading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomRequirePaperSection extends StatelessWidget {
  const CustomRequirePaperSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ShowKarkastanRequirePaperCubit,
        ShowKarkastanRequirePaperState>(
      builder: (context, state) {
        if (state is ShowKarkastanRequirePaperLoading) {
          return ShimmerLoading();
        } else if (state is ShowKarkastanRequirePaperFailure) {
          return Center(child: Text(state.errMessage));
        } else if (state is ShowKarkastanRequirePaperSuccess) {
          return Column(
            children: [
              ...state.requirePapers.map(
                (paper) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5.0),
                  child: Text(
                    paper.requiredPaper ?? "",
                    style: TextStyles.font20Text_input_grayBold,
                    textAlign: TextAlign.center,
                    textDirection: TextDirection.rtl,
                  ),
                ),
              ),
              verticalSpace(10),
            ],
          );
        }
        return Container(); // Return an empty container if state is unknown
      },
    );
  }
}
