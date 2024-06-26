
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_group_project/cors/Routing/routes.dart';
import 'package:trust_group_project/features/our-services/logic/cubit/services_cubit.dart';
import 'package:trust_group_project/features/splash/view/splash_view.dart';

import '../../features/home/presentation/view/home_view.dart';
import '../../features/karkastan/presentation/view/karkastan_view.dart';
import '../../features/learn_with_us/presentation/view/learn_with_us_view.dart';
import '../../features/on_boarging/on_boarding.dart';
import '../../features/our-services/presentation/view/our_services_view.dart';
import '../../features/rating/presentation/view/rating_view.dart';
import '../../features/russain/prsentation/view/russain_view.dart';

import '../../features/who_we_are/presentation/view/who_we_are_view.dart';

import '../DI/dependency_injection.dart';






abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  const SplashView(),
    ),
    GoRoute(
      path: Routes.onBoardingScreen,
      builder: (context, state) => const OnBoarding(),
    ),
    GoRoute(
      path: Routes.homeScreen,
      builder: (context, state) =>HomeView(),
    ),
    GoRoute(
      path: Routes.OurServicesView,
      builder: (context, state) =>BlocProvider(
        create: (context) => getIt<ServicesCubit>()..getServicesData(),
        child: OurServicesView(),
      ),
    ),
    GoRoute(
      path: Routes.WhoWeAreView,
      builder: (context, state) =>WhoWeAreView(),
    ),
    GoRoute(
      path: Routes.KarkastanView,
      builder: (context, state) =>KarkastanView(),
    ),
    GoRoute(
      path: Routes.RussainView,
      builder: (context, state) =>RussainView(),
    ),
    GoRoute(
      path: Routes.LearnWithUsView,
      builder: (context, state) =>LearnWithUsView(),
    ),
    GoRoute(
      path: Routes.RatingView,
      builder: (context, state) =>RatingView(),
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
