part of 'learning_medium_cubit.dart';

@immutable
sealed class LearningMediumState {}

final class LearningMediumInitial extends LearningMediumState {}

final class LearningMediumLoading extends LearningMediumState {}

final class LearningMediumSuccess extends LearningMediumState {
  final List<PdfsModel> learningMediumList;

  LearningMediumSuccess(this.learningMediumList);
}

final class LearningMediumFailure extends LearningMediumState {
  final String errMessage;

  LearningMediumFailure(this.errMessage);
}
