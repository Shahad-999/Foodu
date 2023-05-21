import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:foodu/features/profile_screen/presentation/controllers/profile_controller.dart';
import 'package:foodu/features/profile_screen/presentation/models/profile_details_ui.dart';
import 'package:foodu/features/profile_screen/presentation/states/profile_state.dart';
import 'package:foodu/features/profile_screen/presentation/views/widgets/text_field.dart';
import 'package:get/get.dart';

import 'profile_image_picker.dart';

class EditProfileBody extends StatelessWidget {
  EditProfileBody({Key? key}) : super(key: key);

  final ProfileController _controller = Get.find();

  final TextEditingController nameController =
      TextEditingController(text: 'Andrew');
  final TextEditingController email =
      TextEditingController(text: 'andrew@gmail.com');
  final TextEditingController phoneNumber =
      TextEditingController(text: '012356799');

  @override
  Widget build(BuildContext context) {
    return Obx(
        () => handleStateWidget(_controller.profileDetails.value, context));
  }

  Widget handleStateWidget(ProfileState value, BuildContext context) {
    switch (value.runtimeType) {
      case LoadingProfileState:
        {
          return const Center(child: CircularProgressIndicator());
        }
      case LoadedProfileState:
        {
          return onLoadedData(context, (value as LoadedProfileState).data);
        }
      default:
        {
          return Container();
        }
    }
  }

  Widget onLoadedData(BuildContext context, ProfileDetailsUi data) {
    return Stack(
      children: [
        Positioned(
          right: 8,
          left: 8,
          top: 0,
          bottom: 0,
          child: ListView(
            padding: const EdgeInsets.only(
                bottom: 100, top: 48, right: 24, left: 24),
            children: [
              ProfileImagePicker(
                imageUrl: data.imageUrl,
              ),
              const SizedBox(height: 24),
              GeneralTextField(
                textController: nameController..text = data.name,
                maxLength: 30,
                maxLine: 1,
              ),
              const SizedBox(height: 16),
              GeneralTextField(
                textController: email..text = data.email,
                maxLength: 30,
                maxLine: 1,
                suffix: Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: Icon(
                    Icons.email_outlined,
                    color: Theme.of(context).colorScheme.onBackground,
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
              ),
              const SizedBox(height: 16),
              GeneralTextField(
                textController: phoneNumber
                  ..text = data.phoneNumber.substring(1),
                maxLength: 30,
                maxLine: 1,
                keyboardType: TextInputType.phone,
              ),
            ],
          ),
        ),
        Positioned(
            right: 16,
            left: 16,
            bottom: 0,
            child: AppButton(
              buttonText: 'Update',
              onTap: onClickUpdate,
            ).marginOnly(bottom: 40)),
      ],
    );
  }

  onClickUpdate() {
    _controller.updateProfileDetails(
        name: nameController.text,
        email: email.text,
        image: '', //TODO UPLOAD IMAGE
        phoneNumber: int.tryParse(phoneNumber.text) ?? 0);
  }
}
