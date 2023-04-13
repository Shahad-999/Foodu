
import 'package:foodu/config/service_locator.dart';

import '../models/special_offer.dart';
import '../repository.dart';

class SpecialOffersUseCase{
  final Repository _repository;
  SpecialOffersUseCase() : _repository = getIt.get();

  Future<List<SpecialOffer>> getSpecialOffers() {
    return _repository.getSpecialOffers();
  }

}