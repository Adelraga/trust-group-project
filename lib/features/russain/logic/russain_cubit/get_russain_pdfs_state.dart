part of 'get_russain_pdfs_cubit.dart';

@immutable
sealed class GetRussainPdfsState {}

final class GetRussainPdfsInitial extends GetRussainPdfsState {}

final class GetRussainPdfsLoading extends GetRussainPdfsState {}

final class GetRussainPdfsSuccess extends GetRussainPdfsState {
  final List<PdfsModel> pdfsList;
  GetRussainPdfsSuccess(this.pdfsList);
}
// final class GetTechnicalPdfsSuccess extends GetRussainPdfsState {
//   final List<PdfsModel> pdfsTechnicalList;
//   GetTechnicalPdfsSuccess(this.pdfsTechnicalList);
// }
// final class GetRussainIraqPdfsSuccess extends GetRussainPdfsState {
//   final List<PdfsModel> pdfsListRussainIraq;
//   GetRussainIraqPdfsSuccess(this.pdfsListRussainIraq);
// }

final class GetRussainPdfsFailure extends GetRussainPdfsState {
  final String errMessage;
  GetRussainPdfsFailure(this.errMessage);
}
