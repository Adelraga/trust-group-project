part of 'learning_advanced_cubit.dart';

@immutable
sealed class LearningAdvancedState {}

final class LearningAdvancedInitial extends LearningAdvancedState {}

final class LearningAdvancedLoading extends LearningAdvancedState {}

final class LearningAdvancedSuccess extends LearningAdvancedState {
  final List<PdfsModel> learningAdvancedList;

  LearningAdvancedSuccess(this.learningAdvancedList);
}

final class LearningAdvancedFailure extends LearningAdvancedState {
  final String errMessage;

  LearningAdvancedFailure(this.errMessage);
}
