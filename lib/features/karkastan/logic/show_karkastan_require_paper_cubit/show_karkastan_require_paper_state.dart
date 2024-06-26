part of 'show_karkastan_require_paper_cubit.dart';

@immutable
sealed class ShowKarkastanRequirePaperState {}

final class ShowKarkastanRequirePaperInitial extends ShowKarkastanRequirePaperState {}

final class ShowKarkastanRequirePaperLoading extends ShowKarkastanRequirePaperState {}

final class ShowKarkastanRequirePaperSuccess extends ShowKarkastanRequirePaperState {
  final List<KarkastanRequirePaperModel> requirePapers;

  ShowKarkastanRequirePaperSuccess(this.requirePapers);
}

final class ShowKarkastanRequirePaperFailure extends ShowKarkastanRequirePaperState {
  final String errMessage;

  ShowKarkastanRequirePaperFailure(this.errMessage);
}

