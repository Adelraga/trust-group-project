
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:trust_group_project/cors/Routing/routes.dart';
import 'package:trust_group_project/features/splash/view/splash_view.dart';

import '../../features/on_boarging/on_boarding.dart';




abstract class AppRouter {
  static final router = GoRouter(routes: [
    GoRoute(
      path: '/',
      builder: (context, state) =>  const SplashView(),
    ),
    GoRoute(
      path: Routes.homeScreen,
      builder: (context, state) =>Placeholder(),
    ),
    GoRoute(
      path: '/onBoardingScreen',
      builder: (context, state) => const OnBoarding(),
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
