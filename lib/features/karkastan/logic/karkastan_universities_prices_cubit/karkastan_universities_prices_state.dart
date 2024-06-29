part of 'karkastan_universities_prices_cubit.dart';

@immutable
sealed class KarkastanUniversitiesPricesState {}

final class KarkastanUniversitiesPricesInitial extends KarkastanUniversitiesPricesState {}

final class KarkastanUniversitiesPricesLoading extends KarkastanUniversitiesPricesState {}

final class KarkastanUniversitiesPricesSuccess extends KarkastanUniversitiesPricesState {
  final List<PdfsModel> karkastanUniversitiesPricesList;

  KarkastanUniversitiesPricesSuccess(this.karkastanUniversitiesPricesList);
}

final class KarkastanUniversitiesPricesFailure extends KarkastanUniversitiesPricesState {
  final String errMessage;

  KarkastanUniversitiesPricesFailure(this.errMessage);
}
