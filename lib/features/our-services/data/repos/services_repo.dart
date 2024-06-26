import 'package:dio/dio.dart';
import 'package:trust_group_project/features/our-services/data/models/services_model.dart';

import '../../../../cors/Networking/api_service.dart';
import '../../../../cors/error/failures.dart';
import 'package:dartz/dartz.dart';

class ServicesRepo {
  final ApiService apiService;
  ServicesRepo(this.apiService);
  Future<Either<Failure,List<ServicesModel>>> getServicesData() async {
    try {
      var response = await apiService.getAllServices();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}