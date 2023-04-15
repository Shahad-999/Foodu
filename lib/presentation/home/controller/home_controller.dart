import 'package:get/get.dart';
import '../../../config/service_locator.dart';
import '../../../domain/usecases/discount_usecase.dart';
import '../../../domain/usecases/recommended_usecase.dart';

class HomeController extends GetxController{
  final DiscountUseCase _discountUseCase;
  final RecommendedUseCase _recommendedUseCase;


  HomeController() :
      _recommendedUseCase = getIt.get(),
      _discountUseCase = getIt.get();


}