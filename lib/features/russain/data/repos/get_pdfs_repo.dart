import 'package:dio/dio.dart';
import 'package:trust_group_project/features/our-services/data/models/services_model.dart';
import 'package:trust_group_project/features/russain/data/models/get_pdfs_model.dart';

import '../../../../cors/Networking/api_service.dart';
import '../../../../cors/error/failures.dart';
import 'package:dartz/dartz.dart';

class GetPdfsRepo {
  final ApiService apiService;
  GetPdfsRepo(this.apiService);
  Future<Either<Failure,List<PdfsModel>>> getRussainUniversityPdf() async {
    try {
      var response = await apiService.getRussainUniversityPdf();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  Future<Either<Failure,List<PdfsModel>>> getTechnicalUniversityPdf() async {
    try {
      var response = await apiService.getTechnicalUniversityPdf();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  Future<Either<Failure,List<PdfsModel>>> getRussainUniversityIraqPdf() async {
    try {
      var response = await apiService.getRussainUniversityIraqPdf();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
  Future<Either<Failure,List<PdfsModel>>> getkarkastanUniversitiesPrices() async {
    try {
      var response = await apiService.getkarkastanUniversitiesPrices();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}