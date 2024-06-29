import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import '../../data/models/comment_request_model.dart';
import '../../data/models/comment_response_model.dart';
import '../../data/repos/comments_repo.dart';

part 'comments_state.dart';

class CommentsCubit extends Cubit<CommentsState> {
  final CommentsRepo commentsRepo;
  TextEditingController commentsController = TextEditingController();

  final formKey = GlobalKey<FormState>();
  CommentsCubit(this.commentsRepo) : super(CommentsInitial());

  Future<void> createComments() async {
    emit(CommentsLoading());
    var result = await commentsRepo.createComments(CommentRequestModel(
      rating: commentsController.text,
    ));
    result.fold((failure) => {emit(CommentsFailure(failure.errMessage))},
        (response) => {emit(CommentsSuccess(response))});
  }
}
