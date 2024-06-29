part of 'comments_cubit.dart';

@immutable
sealed class CommentsState {}

final class CommentsInitial extends CommentsState {}

final class CommentsLoading extends CommentsState {}

final class CommentsSuccess extends CommentsState {
  final CommentResponseModel commentResponseModel;

  CommentsSuccess(this.commentResponseModel);
}

final class CommentsFailure extends CommentsState {
  final String errMessage;

  CommentsFailure(this.errMessage);
}
