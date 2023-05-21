import 'package:dartz/dartz.dart';
import 'package:foodu/core/base/base_use_case.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/profile_screen/domain/models/profile_details.dart';
import 'package:foodu/features/profile_screen/domain/profile_repository.dart';

class ProfileDetailsUseCase extends BaseUseCase<ProfileDetails, NoParam> {
  final ProfileRepository _repository;

  ProfileDetailsUseCase() : _repository = getIt.get();

  @override
  Future<Either<Failure, ProfileDetails>> call([NoParam? param]) {
    return _repository.getProfileDetails();
  }

  Future updateProfileDetails({
    required String name,
    required String email,
    required String? image,
    required num phoneNumber,
  }) {
    return _repository.updateProfileDetails(
        ProfileDetails(name: name, imageUrl: image, phoneNumber: phoneNumber, email: email));
  }
}
