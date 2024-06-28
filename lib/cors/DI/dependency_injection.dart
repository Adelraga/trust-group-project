import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:trust_group_project/cors/DI/dio_factory_logger.dart';
import 'package:trust_group_project/features/karkastan/data/models/karkastan_common_question_model.dart';
import 'package:trust_group_project/features/karkastan/logic/show_karkastan_require_paper_cubit/show_karkastan_require_paper_cubit.dart';
import 'package:trust_group_project/features/our-services/data/repos/services_repo.dart';
import 'package:trust_group_project/features/our-services/logic/cubit/services_cubit.dart';
import 'package:trust_group_project/features/who_we_are/data/repos/student_images_repo.dart';
import 'package:trust_group_project/features/who_we_are/logic/cubit/student_images_cubit.dart';

import '../../features/karkastan/data/repos/karkastan_common_question_repo.dart';
import '../../features/karkastan/data/repos/karkastan_require_paper_repo.dart';
import '../../features/karkastan/logic/common_question_cubit/get_common_question_cubit.dart';
import '../../features/russain/data/repos/get_pdfs_repo.dart';
import '../../features/russain/logic/russain_cubit/get_russain_pdfs_cubit.dart';
import '../../features/russain/logic/russain_iraq_cubit/russain_iraq_pdf_cubit.dart';
import '../../features/russain/logic/technical_pdfs_cubit/technical_pdf_cubit.dart';
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
  
  // Get student images in whoweare page
  getIt.registerLazySingleton<StudentImagesCubit>(() => StudentImagesCubit(getIt()));
  getIt.registerLazySingleton<StudentImagesRepo>(() => StudentImagesRepo(getIt()));

  // Get karkastan common question
  getIt.registerLazySingleton<GetCommonQuestionCubit>(() => GetCommonQuestionCubit(getIt()));
  getIt.registerLazySingleton<KarkastanCommonQuestionRepo>(() => KarkastanCommonQuestionRepo(getIt()));
 
  // Get russain pdfs
  getIt.registerLazySingleton<GetRussainPdfsCubit>(() => GetRussainPdfsCubit(getIt()));
  getIt.registerLazySingleton<TechnicalPdfCubit>(() => TechnicalPdfCubit(getIt()));
  getIt.registerLazySingleton<RussainIraqPdfCubit>(() => RussainIraqPdfCubit(getIt()));
  getIt.registerLazySingleton<GetPdfsRepo>(() => GetPdfsRepo(getIt()));

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
