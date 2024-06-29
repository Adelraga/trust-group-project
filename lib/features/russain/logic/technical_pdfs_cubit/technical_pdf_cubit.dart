import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/get_pdfs_model.dart';
import '../../data/repos/get_pdfs_repo.dart';

part 'technical_pdf_state.dart';

class TechnicalPdfCubit extends Cubit<TechnicalPdfState> {
    final GetPdfsRepo getPdfsRepo;
  TechnicalPdfCubit(this.getPdfsRepo) : super(TechnicalPdfInitial());
    Future<void> getTechnicalUniversityPdf() async {
    emit(TechnicalPdfLoading());
    var result2 = await getPdfsRepo.getTechnicalUniversityPdf();
    result2.fold((failure) => {emit(TechnicalPdfFailure(failure.errMessage))},
        (response) => {emit(TechnicalPdfSuccess(response))});
  }
}
