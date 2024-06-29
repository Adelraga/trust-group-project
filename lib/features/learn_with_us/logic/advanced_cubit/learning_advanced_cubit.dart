import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../russain/data/models/get_pdfs_model.dart';
import '../../../russain/data/repos/get_pdfs_repo.dart';

part 'learning_advanced_state.dart';

class LearningAdvancedCubit extends Cubit<LearningAdvancedState> {
  final GetPdfsRepo getPdfsRepo;
  LearningAdvancedCubit(this.getPdfsRepo) : super(LearningAdvancedInitial());
  Future<void> getLearningAdvancedPdf() async {
    emit(LearningAdvancedLoading());
    var result3 = await getPdfsRepo.getLearningAdvancedPdf();
    result3.fold(
        (failure) => {emit(LearningAdvancedFailure(failure.errMessage))},
        (response) => {emit(LearningAdvancedSuccess(response))});
  }
}
