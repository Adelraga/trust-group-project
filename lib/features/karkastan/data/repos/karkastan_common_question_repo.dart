import 'package:dio/dio.dart';
import 'package:trust_group_project/features/karkastan/data/models/karkastan_common_question_model.dart';

import '../../../../cors/Networking/api_service.dart';
import '../../../../cors/error/failures.dart';
import 'package:dartz/dartz.dart';


class KarkastanCommonQuestionRepo {
  final ApiService apiService;
  KarkastanCommonQuestionRepo(this.apiService);
  Future<Either<Failure,List<KarkastanCommonQuestionModel>>> showKarkastanCommonQuestion() async {
    try {
      var response = await apiService.getCommonQuestion();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}