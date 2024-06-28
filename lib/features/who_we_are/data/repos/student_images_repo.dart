import 'package:dio/dio.dart';
import 'package:trust_group_project/features/our-services/data/models/services_model.dart';
import 'package:trust_group_project/features/who_we_are/data/models/student_images_model.dart';

import '../../../../cors/Networking/api_service.dart';
import '../../../../cors/error/failures.dart';
import 'package:dartz/dartz.dart';

class StudentImagesRepo {
  final ApiService apiService;
  StudentImagesRepo(this.apiService);
  Future<Either<Failure,List<StudentImagesModel>>> getStudentImages() async {
    try {
      var response = await apiService.getStudentImages();
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}