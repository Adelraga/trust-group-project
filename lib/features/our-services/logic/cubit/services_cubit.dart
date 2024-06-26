import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../data/models/services_model.dart';
import '../../data/repos/services_repo.dart';

part 'services_state.dart';

class ServicesCubit extends Cubit<ServicesState> {
  final ServicesRepo servicesRepo;
  ServicesCubit(this.servicesRepo) : super(ServicesInitial());
  Future<void> getServicesData() async {
    emit(ServicesLoading());
    var result = await servicesRepo.getServicesData();
    result.fold((failure) => {emit(ServicesFailure(failure.errMessage))},
        (response) => {emit(ServicesSuccess(response))});
  }
}
