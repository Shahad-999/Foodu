import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/utils/language.dart';
import 'package:foodu/features/profile_screen/domain/usecases/language_use_case.dart';
import 'package:get/get.dart';

class LanguageController extends GetxController {
  final LanguageUseCase _languageUseCase;
  final List<Language> language = [Language.english, Language.arabic];

  LanguageController() : _languageUseCase = getIt.get();

  Rx<int> selectedLanguageIndex = 0.obs;

  onChangeLanguageSelected(int newIndex) {
    selectedLanguageIndex.value = newIndex;
    _languageUseCase.changeLanguage(language[newIndex]);
  }

  @override
  void onInit() {
    _languageUseCase.call().then((value) {
      value.fold(
          (l) {}, (r) => {selectedLanguageIndex.value = language.indexOf(r)});
    });
    super.onInit();
  }
}
