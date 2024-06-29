import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_group_project/cors/Routing/routes.dart';
import 'package:trust_group_project/features/our-services/logic/cubit/services_cubit.dart';
import 'package:trust_group_project/features/splash/view/splash_view.dart';
import 'package:trust_group_project/features/who_we_are/data/models/student_images_model.dart';
import 'package:trust_group_project/features/who_we_are/logic/cubit/student_images_cubit.dart';

import '../../features/home/presentation/view/home_view.dart';
import '../../features/karkastan/logic/common_question_cubit/get_common_question_cubit.dart';
import '../../features/karkastan/logic/karkastan_universities_prices_cubit/karkastan_universities_prices_cubit.dart';
import '../../features/karkastan/logic/show_karkastan_require_paper_cubit/show_karkastan_require_paper_cubit.dart';
import '../../features/karkastan/presentation/view/karkastan_view.dart';
import '../../features/learn_with_us/presentation/view/learn_with_us_view.dart';
import '../../features/on_boarging/on_boarding.dart';
import '../../features/our-services/presentation/view/our_services_view.dart';
import '../../features/rating/presentation/view/rating_view.dart';
import '../../features/russain/logic/russain_cubit/get_russain_pdfs_cubit.dart';
import '../../features/russain/logic/russain_iraq_cubit/russain_iraq_pdf_cubit.dart';
import '../../features/russain/logic/technical_pdfs_cubit/technical_pdf_cubit.dart';
import '../../features/russain/logic/youtube_videos_links_cubit/youtube_videos_links_cubit.dart';
import '../../features/russain/prsentation/view/russain_view.dart';

import '../../features/who_we_are/presentation/view/who_we_are_view.dart';

import '../DI/dependency_injection.dart';

abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: Routes.onBoardingScreen,
      builder: (context, state) => const OnBoarding(),
    ),
    GoRoute(
      path: Routes.homeScreen,
      builder: (context, state) => HomeView(),
    ),
    GoRoute(
      path: Routes.OurServicesView,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<ServicesCubit>()..getServicesData(),
        child: OurServicesView(),
      ),
    ),
    GoRoute(
      path: Routes.WhoWeAreView,
      builder: (context, state) => BlocProvider(
        create: (context) => getIt<StudentImagesCubit>()..getStudentImages(),
        child: WhoWeAreView(),
      ),
    ),

    GoRoute(
      path: Routes.KarkastanView,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider<ShowKarkastanRequirePaperCubit>(
            create: (context) => getIt<ShowKarkastanRequirePaperCubit>()
              ..getKarkastanRequirePaper(),
          ),
          BlocProvider<GetCommonQuestionCubit>(
            create: (context) =>
                getIt<GetCommonQuestionCubit>()..getCommonQuestion(),
          ),
          BlocProvider<KarkastanUniversitiesPricesCubit>(
            create: (context) =>
                getIt<KarkastanUniversitiesPricesCubit>()..getkarkastanUniversitiesPrices(),
          ),
          // Add other Blocs here if needed
        ],
        child: KarkastanView(),
      ),
    ),
    GoRoute(
      path: Routes.RussainView,
      builder: (context, state) => MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) =>
                getIt<GetRussainPdfsCubit>()..getRussainUniversityPdf(),
          ),
          BlocProvider(
            create: (context) =>
                getIt<TechnicalPdfCubit>()..getTechnicalUniversityPdf(),
          ),
          BlocProvider(
            create: (context) =>
                getIt<RussainIraqPdfCubit>()..getRussainUniversityIraqPdf(),
          ),
          BlocProvider(
            create: (context) =>
                getIt<YoutubeVideosLinksCubit>()..getYoutubeVideosLinks(),
          ),
        ],
        child: RussainView(),
      ),
    ),
    GoRoute(
      path: Routes.LearnWithUsView,
      builder: (context, state) => LearnWithUsView(),
    ),
    GoRoute(
      path: Routes.RatingView,
      builder: (context, state) => RatingView(),
    ),
    // GoRoute(
    //   path: Routes.characterDetails,
    //   builder: (context, state) =>  BlocProvider(
    //     create: (context) => getIt<CharacterDetailCubit>(),
    //     child: CharacterDetailView(
    //     characterid: state.extra as CharacterData,
    //   ),
    //   ),
    // ),
    // GoRoute(
    //   path: Routes.topMovieDetail,
    //   builder: (context, state) =>
    //   // BlocProvider(
    //   //   create: (context) => getIt<CharacterDetailCubit>(),
    //    TopRatedMovieDetailView(
    //     movieDetail: state.extra as Data,
    //    ),
    //   // ),
    // ),

    // GoRoute(
    //   path: Routes.category,
    //   builder: (context, state) => BlocProvider(
    //     create: (context) => getIt<MoviesWithCategoryCubit>(),

    //     child: MovieListWithCategoryItem(
    //       idd: state.extra as int,
    //     ),
    //   ),
    // ),
    // GoRoute(
    //   path: '/search',
    //   builder: (context, state) => SearchView(),
    // ),
  ]);
}
