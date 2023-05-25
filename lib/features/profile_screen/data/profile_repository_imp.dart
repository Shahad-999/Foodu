import 'package:dartz/dartz.dart';
import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/core/utils/language.dart';
import 'package:foodu/features/profile_screen/data/data_sources/remote_profile_data_source.dart';
import 'package:foodu/features/profile_screen/data/mappers/address_mapper.dart';
import 'package:foodu/features/profile_screen/data/mappers/profile_details_mapper.dart';
import 'package:foodu/features/profile_screen/domain/models/address.dart';
import 'package:foodu/features/profile_screen/domain/models/profile_details.dart';
import 'package:foodu/features/profile_screen/domain/profile_repository.dart';

class ProfileRepositoryImp extends ProfileRepository {
  final RemoteProfileDataSource _remoteProfileDataSource;

  ProfileRepositoryImp() : _remoteProfileDataSource = getIt.get();

  @override
  Future<Either<Failure, ProfileDetails>> getProfileDetails() async {
    try {
      final data = await _remoteProfileDataSource.getProfileDetails();
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

  @override
  Future updateProfileDetails(ProfileDetails details) async {
    return await _remoteProfileDataSource.updateProfile(details.toDto());
  }

  @override
  Future<Either<Failure, List<Address>>> getAddress() async {
    try {
      final data = await _remoteProfileDataSource.getAddress();
      return right(data.toModel());
    } catch (l) {
      return left(Failure('no internet'));
    }
  }

  @override
  Future<Either<Failure, Language>> getCurrentLanguage() async{
    return right(Language.arabic);
  }
  @override
  Future changeLanguage(Language language) async{
    Future((){});
  }
}
