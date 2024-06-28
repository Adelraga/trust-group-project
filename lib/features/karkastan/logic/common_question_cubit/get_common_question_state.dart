part of 'get_common_question_cubit.dart';

@immutable
sealed class GetCommonQuestionState {}

final class GetCommonQuestionInitial extends GetCommonQuestionState {}

final class GetCommonQuestionLoading extends GetCommonQuestionState {}

final class GetCommonQuestionSuccess extends GetCommonQuestionState {
  final List<KarkastanCommonQuestionModel> commonQuestionList;
  GetCommonQuestionSuccess(this.commonQuestionList);
}

final class GetCommonQuestionFailure extends GetCommonQuestionState {
  final String errMessage;
  GetCommonQuestionFailure(this.errMessage);
}
