import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/extensions.dart';
import 'package:get/get.dart';
import '../../domain/usecases/special_offers_usecase.dart';
import '../model/special_offer_ui.dart';

class SpecialOfferController extends GetxController{
  final SpecialOffersUseCase _specialUseCase;
  final specialOffers = <SpecialOfferUi>[].obs;

  SpecialOfferController(): _specialUseCase = getIt.get();



  getSpecialOfferItems(){
    _specialUseCase
        .getSpecialOffers()
        .then(
            (items) => specialOffers.value = items.toUiModel()
    );
  }


}