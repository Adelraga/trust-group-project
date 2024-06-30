import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:trust_group_project/features/russain/logic/russain_cubit/get_russain_pdfs_cubit.dart';
import '../../../../cors/Widgets/cumtom_file_downloader.dart';
import '../../../who_we_are/presentation/widgets/intro_in_top.dart';
import '../../logic/russain_iraq_cubit/russain_iraq_pdf_cubit.dart';
import '../../logic/technical_pdfs_cubit/technical_pdf_cubit.dart';
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
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(
                title: " لمعرفة اسعار الجامعات الروسية ؟"),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<GetRussainPdfsCubit, GetRussainPdfsState>(
                builder: (context, state) {
                  if (state is GetRussainPdfsLoading) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    );
                  } else if (state is GetRussainPdfsSuccess) {
                    if (state.pdfsList.isNotEmpty) {
                      return CustomFileDownloader(
                        fileName: state.pdfsList[0].pdfName ?? "",
                        filePath: state.pdfsList[0].pdfUrl ?? "",
                      );
                    } else {
                      return const Text("No files available.");
                    }
                  } else if (state is GetRussainPdfsFailure) {
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
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(
                title: " معلومات اضافيه عن التخصصات ؟"),
          ),
        ),
              SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: BlocBuilder<TechnicalPdfCubit, TechnicalPdfState>(
                builder: (context, state) {
                  if (state is TechnicalPdfLoading) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    );
                  } else if (state is TechnicalPdfSuccess) {
                    if (state.pdfsListTechnial.isNotEmpty) {
                      return CustomFileDownloader(
                        fileName: state.pdfsListTechnial[0].pdfName ?? "",
                        filePath: state.pdfsListTechnial[0].pdfUrl ?? "",
                      );
                    } else {
                      return const Text("No files available.");
                    }
                  } else if (state is TechnicalPdfFailure) {
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
              child: BlocBuilder<RussainIraqPdfCubit, RussainIraqPdfState>(
                builder: (context, state) {
                  if (state is RussainIraqPdfLoading) {
                    return Shimmer.fromColors(
                      baseColor: Colors.grey[300]!,
                      highlightColor: Colors.grey[100]!,
                      child: Container(
                        width: double.infinity,
                        height: 50.0,
                        color: Colors.white,
                      ),
                    );
                  } else if (state is RussainIraqPdfSuccess) {
                    if (state.pdfsListRussainIraq.isNotEmpty) {
                      return CustomFileDownloader(
                        fileName: state.pdfsListRussainIraq[0].pdfName ?? "",
                        filePath: state.pdfsListRussainIraq[0].pdfUrl ?? "",
                      );
                    } else {
                      return const Text("No files available.");
                    }
                  } else if (state is RussainIraqPdfFailure) {
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
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: TitleWithDescriptionSection(
                title: " للتسجيل عبر الرابط التالى"),
          ),
        ),
        const SliverToBoxAdapter(
          child: EnrollForm(),
        ),
        const SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
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
