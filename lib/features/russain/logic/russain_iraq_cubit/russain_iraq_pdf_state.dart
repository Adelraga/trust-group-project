part of 'russain_iraq_pdf_cubit.dart';

@immutable
sealed class RussainIraqPdfState {}

final class RussainIraqPdfInitial extends RussainIraqPdfState {}

final class RussainIraqPdfLoading extends RussainIraqPdfState {}

final class RussainIraqPdfSuccess extends RussainIraqPdfState {
  final List<PdfsModel> pdfsListRussainIraq;
  RussainIraqPdfSuccess(this.pdfsListRussainIraq);
}

final class RussainIraqPdfFailure extends RussainIraqPdfState {
  final String errMessage;
  RussainIraqPdfFailure(this.errMessage);
}
