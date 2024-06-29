part of 'learning_begainer_cubit.dart';

@immutable
sealed class LearningBegainerState {}

final class LearningBegainerInitial extends LearningBegainerState {}

final class LearningBegainerLoading extends LearningBegainerState {}

final class LearningBegainerSuccess extends LearningBegainerState {
  final List<PdfsModel> learningBegainerList;

  LearningBegainerSuccess(this.learningBegainerList);
}

final class LearningBegainerFailure extends LearningBegainerState {
  final String errMessage;

  LearningBegainerFailure(this.errMessage);
}
