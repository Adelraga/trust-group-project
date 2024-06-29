import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../../russain/data/models/get_pdfs_model.dart';
import '../../../russain/data/repos/get_pdfs_repo.dart';

part 'learning_medium_state.dart';

class LearningMediumCubit extends Cubit<LearningMediumState> {
      final GetPdfsRepo getPdfsRepo;

  LearningMediumCubit(this.getPdfsRepo) : super(LearningMediumInitial());
  Future<void> getLearningMediumPdf() async {
    emit(LearningMediumLoading());
    var result3 = await getPdfsRepo.getLearningMediumPdf();
    result3.fold(
        (failure) => {emit(LearningMediumFailure(failure.errMessage))},
        (response) => {emit(LearningMediumSuccess(response))});
  }
}
