part of 'technical_pdf_cubit.dart';

@immutable
sealed class TechnicalPdfState {}

final class TechnicalPdfInitial extends TechnicalPdfState {}

final class TechnicalPdfLoading extends TechnicalPdfState {}

final class TechnicalPdfSuccess extends TechnicalPdfState {
  final List<PdfsModel> pdfsListTechnial;
  TechnicalPdfSuccess(this.pdfsListTechnial);
}

final class TechnicalPdfFailure extends TechnicalPdfState {
  final String errMessage;
  TechnicalPdfFailure(this.errMessage);
}
