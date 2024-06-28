import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/karkastan_common_question_model.dart';
import '../../data/repos/karkastan_common_question_repo.dart';

part 'get_common_question_state.dart';

class GetCommonQuestionCubit extends Cubit<GetCommonQuestionState> {
  final KarkastanCommonQuestionRepo karkastanCommonQuestionRepo;
  GetCommonQuestionCubit(this.karkastanCommonQuestionRepo) : super(GetCommonQuestionInitial());
  Future<void> getCommonQuestion() async {
    emit(GetCommonQuestionLoading());
    var result = await karkastanCommonQuestionRepo.showKarkastanCommonQuestion();
    result.fold((failure) => {emit(GetCommonQuestionFailure(failure.errMessage))},
        (response) => {emit(GetCommonQuestionSuccess(response))});
  }
}
