import 'package:flutter/material.dart';

import '../../../../cors/Widgets/cumtom_file_downloader.dart';
import '../../../who_we_are/presentation/widgets/intro_in_top.dart';
import 'enroll_form.dart';
import 'student_videos_grid_view.dart';
import 'top_wave_image_container.dart';

class RussainViewBody extends StatelessWidget {
  const RussainViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: TopWaveImageContainer(),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(
                title: " لمعرفة اسعار الجامعات الروسية ؟"),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomFileDownloader(
                  fileName: "Universities of Kyrgyzstan 2023-2024 Egypt.pdf",
                  filePath:
                      "https://www.tutorialspoint.com/css/css_tutorial.pdf",
                ),
              )), // Removed `const` keyword
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(
                title: " معلومات اضافيه عن التخصصات ؟"),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
              height: 80,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: CustomFileDownloader(
                  fileName: "Universities of Kyrgyzstan 2023-2024 Egypt.pdf",
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
                  fileName: "Universities of Kyrgyzstan 2023-2024 Egypt.pdf",
                  filePath:
                      "https://www.tutorialspoint.com/css/css_tutorial.pdf",
                ),
              )), // Removed `const` keyword
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(
                title: " للتسجيل عبر الرابط التالى"),
          ),
        ),
        const SliverToBoxAdapter(
          child: EnrollForm(),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(title: " طلابنا"),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
          sliver: StudentVideosGridView(),
        ),
      ],
    );
  }
}
