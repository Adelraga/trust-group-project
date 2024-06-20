import 'package:flutter/material.dart';

import '../../../../cors/Widgets/cumtom_file_downloader.dart';
import '../../../who_we_are/presentation/widgets/intro_in_top.dart';
import 'custom_top_container.dart';

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
                child: CustomFileDownloader(
                  fileName: "Russain language level 1 . pdf",
                  filePath:
                      "https://www.tutorialspoint.com/css/css_tutorial.pdf",
                ),
              )), // Removed `const` keyword
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
                child: CustomFileDownloader(
                  fileName: "اهم_100_جملة_في_اللغةА1_روسيا_بالمصري.pdf",
                  filePath:
                      "https://www.tutorialspoint.com/css/css_tutorial.pdf",
                ),
              )), // Removed `const` keyword
        ),
        SliverToBoxAdapter(
          child: SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomFileDownloader(
                  fileName: "كتاب تحضيرى روسى.pdf",
                  filePath:
                      "https://www.tutorialspoint.com/css/css_tutorial.pdf",
                ),
              )), // Removed `const` keyword
        ),
      ],
    );
  }
}
