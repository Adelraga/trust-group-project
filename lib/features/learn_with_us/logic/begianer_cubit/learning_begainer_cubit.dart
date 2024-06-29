import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../russain/data/models/get_pdfs_model.dart';
import '../../../russain/data/repos/get_pdfs_repo.dart';

part 'learning_begainer_state.dart';

class LearningBegainerCubit extends Cubit<LearningBegainerState> {
  final GetPdfsRepo getPdfsRepo;

  LearningBegainerCubit(this.getPdfsRepo) : super(LearningBegainerInitial());
  Future<void> getLearningBegainerPdf() async {
    emit(LearningBegainerLoading());
    var result3 = await getPdfsRepo.getlearningBegainerPdf();
    result3.fold(
        (failure) => {emit(LearningBegainerFailure(failure.errMessage))},
        (response) => {emit(LearningBegainerSuccess(response))});
  }
}
