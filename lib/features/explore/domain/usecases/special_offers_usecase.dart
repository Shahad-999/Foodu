import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import '../../../../core/base/base_use_case.dart';
import '../models/special_offer.dart';
import '../repository.dart';

class SpecialOffersUseCase extends BaseUseCase<List<SpecialOffer>,NoParam>{
  final ExploreRepository _repository;
  SpecialOffersUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, List<SpecialOffer>>> call([NoParam? param]) {
    return _repository.getSpecialOffers();
  }

}