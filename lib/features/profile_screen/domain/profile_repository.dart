
import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/core/utils/language.dart';
import 'package:foodu/features/profile_screen/domain/models/address.dart';
import 'package:foodu/features/profile_screen/domain/models/profile_details.dart';

abstract class ProfileRepository{
  Future<Either<Failure, ProfileDetails>> getProfileDetails();

  Future updateProfileDetails(ProfileDetails details);

  Future<Either<Failure, List<Address>>> getAddress();

  Future<Either<Failure, Language>> getCurrentLanguage();

  Future changeLanguage(Language language);
}