import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/get_pdfs_model.dart';
import '../../data/repos/get_pdfs_repo.dart';

part 'get_russain_pdfs_state.dart';

class GetRussainPdfsCubit extends Cubit<GetRussainPdfsState> {
  final GetPdfsRepo getPdfsRepo;
  GetRussainPdfsCubit(this.getPdfsRepo) : super(GetRussainPdfsInitial());
  Future<void> getRussainUniversityPdf() async {
    emit(GetRussainPdfsLoading());
    var result1 = await getPdfsRepo.getRussainUniversityPdf();
    result1.fold((failure) => {emit(GetRussainPdfsFailure(failure.errMessage))},
        (response) => {emit(GetRussainPdfsSuccess(response))});
  }
}
