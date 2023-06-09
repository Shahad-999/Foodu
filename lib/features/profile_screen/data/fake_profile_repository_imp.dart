import 'package:dartz/dartz.dart';
import 'package:foodu/core/failure.dart';
import 'package:foodu/core/utils/language.dart';
import 'package:foodu/features/profile_screen/domain/models/address.dart';
import 'package:foodu/features/profile_screen/domain/models/profile_details.dart';
import 'package:foodu/features/profile_screen/domain/profile_repository.dart';

class FakeProfileRepositoryImp extends ProfileRepository {
  @override
  Future<Either<Failure, ProfileDetails>> getProfileDetails() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(const ProfileDetails(
        name: 'Shahad Kadhim',
        imageUrl: 'https://avatars.githubusercontent.com/u/118618262?v=4',
        phoneNumber: 0782345622423,
        email: 'aaa@gmail.com'
    ));
  }

  @override
  Future updateProfileDetails(ProfileDetails details) async {
    print(details);
    await Future.delayed(const Duration(seconds: 2));
  }

  @override
  Future<Either<Failure, List<Address>>> getAddress() async {
    await Future.delayed(const Duration(seconds: 2));
    return right(const [
      Address(title: 'Home', fullAddress: 'Times Square NYC , Manhattan', isDefault: true),
      Address(title: 'Home', fullAddress: 'Times Square NYC , Manhattan'),
      Address(title: 'Home', fullAddress: 'Times Square NYC , Manhattan'),
      Address(title: 'Home', fullAddress: 'Times Square NYC , Manhattan'),
    ]);
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
