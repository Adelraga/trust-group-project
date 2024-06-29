import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trust_group_project/features/learn_with_us/logic/advanced_cubit/learning_advanced_cubit.dart';
import 'package:trust_group_project/features/learn_with_us/logic/begianer_cubit/learning_begainer_cubit.dart';
import 'package:trust_group_project/features/learn_with_us/logic/meduim_cubit/learning_medium_cubit.dart';

import '../../../../cors/Widgets/cumtom_file_downloader.dart';
import '../../../who_we_are/presentation/widgets/intro_in_top.dart';
import 'custom_top_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LearnWithUsViewBody extends StatelessWidget {
  const LearnWithUsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomTopContainer(),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(
                title: " للمستوي الاول قم بتحميل الملف التالى :"),
          ),
        ),
          SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<LearningBegainerCubit, LearningBegainerState>(
                builder: (context, state) {
                  if (state is LearningBegainerLoading) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    );
                  } else if (state is LearningBegainerSuccess) {
                    if (state.learningBegainerList.isNotEmpty) {
                      return CustomFileDownloader(
                        fileName: state.learningBegainerList[0].pdfName ?? "",
                        filePath: state.learningBegainerList[0].pdfUrl ?? "",
                      );
                    } else {
                      return const Text("No files available.");
                    }
                  } else if (state is LearningBegainerFailure) {
                    return Text(state.errMessage);
                  }
                  return const SizedBox();
                },
              ),
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(
                title: " للمستوي المتقدم قم بتحميل الملف التالى :"),
          ),
        ),
           SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<LearningMediumCubit, LearningMediumState>(
                builder: (context, state) {
                  if (state is LearningMediumLoading) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    );
                  } else if (state is LearningMediumSuccess) {
                    if (state.learningMediumList.isNotEmpty) {
                      return CustomFileDownloader(
                        fileName: state.learningMediumList[0].pdfName ?? "",
                        filePath: state.learningMediumList[0].pdfUrl ?? "",
                      );
                    } else {
                      return const Text("No files available.");
                    }
                  } else if (state is LearningMediumFailure) {
                    return Text(state.errMessage);
                  }
                  return const SizedBox();
                },
              ),
            ),
          ),
        ),
           SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<LearningAdvancedCubit, LearningAdvancedState>(
                builder: (context, state) {
                  if (state is LearningAdvancedLoading) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    );
                  } else if (state is LearningAdvancedSuccess) {
                    if (state.learningAdvancedList.isNotEmpty) {
                      return CustomFileDownloader(
                        fileName: state.learningAdvancedList[0].pdfName ?? "",
                        filePath: state.learningAdvancedList[0].pdfUrl ?? "",
                      );
                    } else {
                      return const Text("No files available.");
                    }
                  } else if (state is LearningAdvancedFailure) {
                    return Text(state.errMessage);
                  }
                  return const SizedBox();
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
