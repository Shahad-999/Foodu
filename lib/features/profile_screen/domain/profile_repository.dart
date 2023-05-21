
import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/features/profile_screen/domain/models/profile_details.dart';

abstract class ProfileRepository{
  Future<Either<Failure, ProfileDetails>> getProfileDetails();

  Future updateProfileDetails(ProfileDetails details);
}