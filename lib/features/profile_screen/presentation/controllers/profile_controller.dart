import 'package:foodu/core/config/service_locator.dart';
import 'package:foodu/features/profile_screen/domain/usecases/profile_details_use_case.dart';
import 'package:foodu/features/profile_screen/presentation/mappers/profile_details_mapper.dart';
import 'package:foodu/features/profile_screen/presentation/states/profile_state.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final ProfileDetailsUseCase _profileUseCase;
  final profileDetails = Rx<ProfileState>(InitialProfileState());

  ProfileController() : _profileUseCase = getIt.get();

  getProfileInfo() {
    _profileUseCase.call().then((respond) {
      respond.fold((l) => {}, (items) {
        profileDetails.value = (LoadedProfileState(items.toUiModel()));
      });
    });
  }

  Future updateProfileDetails({
    required String name,
    required String email,
    required String image,
    required num phoneNumber,
  }) async{
    return await _profileUseCase.updateProfileDetails(
        name: name, email: email, image: image, phoneNumber: phoneNumber);
  }
}
