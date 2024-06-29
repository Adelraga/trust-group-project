import 'package:dio/dio.dart';
import 'package:trust_group_project/features/our-services/data/models/services_model.dart';
import 'package:trust_group_project/features/rating/data/models/comment_request_model.dart';
import 'package:trust_group_project/features/rating/data/models/comment_response_model.dart';

import '../../../../cors/Networking/api_service.dart';
import '../../../../cors/error/failures.dart';
import 'package:dartz/dartz.dart';

class CommentsRepo {
  final ApiService apiService;
  CommentsRepo(this.apiService);
  Future<Either<Failure,CommentResponseModel>> createComments(CommentRequestModel commentRequest) async {
    try {
      var response = await apiService.createComments(commentRequest);
     

      return right(response);
    } on Exception catch (e) {
      if (e is DioException) {
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}