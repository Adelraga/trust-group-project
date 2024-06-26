import 'package:dio/dio.dart';

import '../../../../cors/Networking/api_service.dart';
import '../../../../cors/error/failures.dart';
import 'package:dartz/dartz.dart';

import '../models/karkastan_require_paper_model.dart';

class KarkastanRequirePaperRepo {
  final ApiService apiService;
  KarkastanRequirePaperRepo(this.apiService);
  Future<Either<Failure,List<KarkastanRequirePaperModel>>> showKarkastanRequirePaper() async {
    try {
      var response = await apiService.ShowKarkastanRequirePaper();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}