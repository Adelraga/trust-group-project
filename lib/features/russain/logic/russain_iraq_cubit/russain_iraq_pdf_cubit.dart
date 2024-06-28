import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/get_pdfs_model.dart';
import '../../data/repos/get_pdfs_repo.dart';

part 'russain_iraq_pdf_state.dart';

class RussainIraqPdfCubit extends Cubit<RussainIraqPdfState> {
    final GetPdfsRepo getPdfsRepo;
  RussainIraqPdfCubit(this.getPdfsRepo) : super(RussainIraqPdfInitial());
    Future<void> getRussainUniversityIraqPdf() async {
    emit(RussainIraqPdfLoading());
    var result3 = await getPdfsRepo.getRussainUniversityIraqPdf();
    result3.fold((failure) => {emit(RussainIraqPdfFailure(failure.errMessage))},
        (response) => {emit(RussainIraqPdfSuccess(response))});
  }
}
