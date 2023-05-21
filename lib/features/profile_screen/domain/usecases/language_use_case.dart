import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/core/utils/language.dart';
import 'package:foodu/features/profile_screen/domain/profile_repository.dart';

class LanguageUseCase extends BaseUseCase<Language, NoParam> {
  final ProfileRepository _repository;

  LanguageUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, Language>> call([NoParam? param]) {
    return _repository.getCurrentLanguage();
  }

  Future changeLanguage(Language language){
    return _repository.changeLanguage(language);
  }

}
