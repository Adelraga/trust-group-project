import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:trust_group_project/features/russain/data/models/get_pdfs_model.dart';

import '../../../russain/data/repos/get_pdfs_repo.dart';

part 'karkastan_universities_prices_state.dart';

class KarkastanUniversitiesPricesCubit
    extends Cubit<KarkastanUniversitiesPricesState> {
  final GetPdfsRepo getPdfsRepo;
  KarkastanUniversitiesPricesCubit(this.getPdfsRepo)
      : super(KarkastanUniversitiesPricesInitial());
  Future<void> getkarkastanUniversitiesPrices() async {
    emit(KarkastanUniversitiesPricesLoading());
    var result = await getPdfsRepo.getkarkastanUniversitiesPrices();
    result.fold(
        (failure) =>
            {emit(KarkastanUniversitiesPricesFailure(failure.errMessage))},
        (response) => {emit(KarkastanUniversitiesPricesSuccess(response))});
  }
}
