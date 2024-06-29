import 'package:dio/dio.dart';
import 'package:trust_group_project/features/our-services/data/models/services_model.dart';
import 'package:trust_group_project/features/russain/data/models/get_pdfs_model.dart';

import '../../../../cors/Networking/api_service.dart';
import '../../../../cors/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/get_youtube_videos_model.dart';

class GetYoutubeVideosRepo {
  final ApiService apiService;
  GetYoutubeVideosRepo(this.apiService);
  Future<Either<Failure,List<YoutubeVideosModel>>> GetYoutubeVideosLinks() async {
    try {
      var response = await apiService.getRussainYoutubeLinks();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
 
}