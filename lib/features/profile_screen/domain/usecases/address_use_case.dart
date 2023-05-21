import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/profile_screen/domain/models/address.dart';
import 'package:foodu/features/profile_screen/domain/profile_repository.dart';

class AddressUseCase extends BaseUseCase<List<Address>, NoParam> {
  final ProfileRepository _repository;

  AddressUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, List<Address>>> call([NoParam? param]) {
    return _repository.getAddress();
  }

}
