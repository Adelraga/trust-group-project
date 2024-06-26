import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/karkastan_require_paper_model.dart';
import '../../data/repos/karkastan_require_paper_repo.dart';

part 'show_karkastan_require_paper_state.dart';

class ShowKarkastanRequirePaperCubit
    extends Cubit<ShowKarkastanRequirePaperState> {
  final KarkastanRequirePaperRepo karkastanRequirePaperRepo;
  ShowKarkastanRequirePaperCubit(this.karkastanRequirePaperRepo)
      : super(ShowKarkastanRequirePaperInitial());
  Future<void> getKarkastanRequirePaper() async {
    emit(ShowKarkastanRequirePaperLoading());
    var result = await karkastanRequirePaperRepo.showKarkastanRequirePaper();
    result.fold(
        (failure) =>
            {emit(ShowKarkastanRequirePaperFailure(failure.errMessage))},
        (response) => {emit(ShowKarkastanRequirePaperSuccess(response))});
  }
}
