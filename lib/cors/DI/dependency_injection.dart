import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:trust_group_project/cors/DI/dio_factory_logger.dart';
import 'package:trust_group_project/features/karkastan/logic/show_karkastan_require_paper_cubit/show_karkastan_require_paper_cubit.dart';
import 'package:trust_group_project/features/our-services/data/repos/services_repo.dart';
import 'package:trust_group_project/features/our-services/logic/cubit/services_cubit.dart';

import '../../features/karkastan/data/repos/karkastan_require_paper_repo.dart';
import '../Networking/api_service.dart';


final getIt = GetIt.instance;
void initGetIt() {
  Dio dio = DioFactory.getDio();
  // singleton is the used of method we take acopy of it many times so we make it one time and reused it  /// here a singleton for apiservice
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // /// here a singleton for apiservice

  // Services Data
  getIt.registerLazySingleton<ServicesCubit>(() => ServicesCubit(getIt()));
  getIt.registerLazySingleton<ServicesRepo>(() => ServicesRepo(getIt()));

  // ShowKarkastanRequirePaper
  getIt.registerLazySingleton<ShowKarkastanRequirePaperCubit>(() => ShowKarkastanRequirePaperCubit(getIt()));
  getIt.registerLazySingleton<KarkastanRequirePaperRepo>(() => KarkastanRequirePaperRepo(getIt()));

  // //categorylist
  // getIt.registerLazySingleton<CategoryListCubit>(
  //     () => CategoryListCubit(getIt()));
  // getIt
  //     .registerLazySingleton<CategoryListRepo>(() => CategoryListRepo(getIt()));
  // //character list
  // getIt.registerLazySingleton<CharactersListCubit>(
  //     () => CharactersListCubit(getIt()));
  // getIt
  //     .registerLazySingleton<CharacterListRepo>(() => CharacterListRepo(getIt()));
  // //character Details
  // getIt.registerLazySingleton<CharacterDetailCubit>(
  //     () => CharacterDetailCubit(getIt()));
  // getIt
  //     .registerLazySingleton<CharacterDetailRepo>(() => CharacterDetailRepo(getIt()));
  
  // // movies with category
  // getIt.registerLazySingleton<MoviesWithCategoryCubit>(
  //     () => MoviesWithCategoryCubit(getIt()));
  // getIt
  //     .registerLazySingleton<MoviesWithCategoryRepo>(() => MoviesWithCategoryRepo(getIt()));
}
