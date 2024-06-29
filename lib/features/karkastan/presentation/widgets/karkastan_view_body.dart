import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trust_group_project/cors/Helpers/spacing.dart';
import 'package:trust_group_project/features/karkastan/logic/karkastan_universities_prices_cubit/karkastan_universities_prices_cubit.dart';
import 'package:trust_group_project/features/karkastan/presentation/widgets/karkastan_fisa.dart';

import '../../../../cors/Widgets/cumtom_file_downloader.dart';
import '../../../../cors/Widgets/custom_divider.dart';
import '../../../who_we_are/presentation/widgets/intro_in_top.dart';
import 'custom_require_paper_section.dart';
import 'custom_top_video.dart';
import 'karkastan_arab_country_section.dart';
import 'karkastan_question_list_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class KarkastanViewBody extends StatelessWidget {
  const KarkastanViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: CustomScrollView(
        slivers: [
          const SliverToBoxAdapter(
            child: CustomTopVideo(),
          ),
          const SliverToBoxAdapter(
            child: TitleWithDescriptionSection(
              title: "لماذا الدراسة في قرغيزستان؟",
              description:
                  "بفضل نظام قرغيزستان التعليمي عالي الجودة والميسور التكلفة، أصبحت قرغيزستان وجهة شعبية متزايدة للطلاب الأجانب الذين يسعون للحصول على تعليم جيد. حيث تقدم قيرغيزستان مزيجًا فريدًا من التعليم الحديث والقيم التقليدية. وتشتهر جامعاتها ببرامجها الأكاديمية المتقدمة وبيئتها متعددة الثقافات. توفر الدراسة هنا التعرف على مجتمع طلابي متنوع، مما يعزز منظورك العالمي",
            ),
          ),
          const SliverToBoxAdapter(
            child: CustomDivider(),
          ),
          const SliverToBoxAdapter(
            child: KarkastanArabCountrySection(),
          ),
          const SliverToBoxAdapter(
            child: CustomDivider(),
          ),
          const SliverToBoxAdapter(
            child: TitleWithDescriptionSection(
                title: "المستندات المطلوبة للتقديم للدراسة"),
          ),
          const SliverToBoxAdapter(
            child: CustomRequirePaperSection(),
          ),
          const SliverToBoxAdapter(
            child: CustomDivider(),
          ),
          const SliverToBoxAdapter(
            child:
                TitleWithDescriptionSection(title: " لمعرفة اسعار الجامعات ؟"),
          ),
           SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<KarkastanUniversitiesPricesCubit, KarkastanUniversitiesPricesState>(
                builder: (context, state) {
                  if (state is KarkastanUniversitiesPricesLoading) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: 30.0,
                        color: Colors.white,
                      ),
                    );
                  } else if (state is KarkastanUniversitiesPricesSuccess) {
                    if (state.karkastanUniversitiesPricesList.isNotEmpty) {
                      return CustomFileDownloader(
                        fileName: state.karkastanUniversitiesPricesList[0].pdfName ?? "",
                        filePath: state.karkastanUniversitiesPricesList[0].pdfUrl ?? "",
                      );
                    } else {
                      return const Text("No files available.");
                    }
                  } else if (state is KarkastanUniversitiesPricesFailure) {
                    return Text(state.errMessage);
                  }
                  return const Text("No files available.");
                },
              ),
            ),
          ),
        ),
          const SliverToBoxAdapter(
            child: CustomDivider(),
          ),
          const SliverToBoxAdapter(
            child: TitleWithDescriptionSection(
                title: " شكل نوذج الفيزا الالكترونية لدولة قرغيزستان "),
          ),
          const SliverToBoxAdapter(
            child: KarkastanFisa(),
          ),
          const SliverToBoxAdapter(
            child: CustomDivider(),
          ),
          const SliverToBoxAdapter(
            child: TitleWithDescriptionSection(
                title: "الاسئله الاكثر شيوعا عن الدراسه في دوله قرغيزستتان? "),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(15),
            sliver: KarkastanQuestionListView(),
          ),
        ],
      ),
    );
  }
}
