import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:foodu/features/profile_screen/presentation/views/widgets/text_field.dart';
import 'package:get/get.dart';

import 'profile_image_picker.dart';

class EditProfileBody extends StatelessWidget {
  EditProfileBody({Key? key}) : super(key: key);

  final TextEditingController nameController = TextEditingController(text: 'Andrew');
  final TextEditingController email = TextEditingController(text : 'andrew@gmail.com');
  final TextEditingController phoneNumber = TextEditingController(text: '012356799');

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          right: 8,
          left: 8,
          top: 0,
          bottom: 0,
          child: ListView(
            padding: const EdgeInsets.only(bottom: 100, top: 48,right: 24,left: 24),
            children:  [
              const ProfileImagePicker(),
              const SizedBox(height: 24),
              GeneralTextField(
                textController: nameController,
                maxLength: 30,
                maxLine: 1,
              ),
              const SizedBox(height: 16),
              GeneralTextField(
                textController: email,
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
                textController: phoneNumber,
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
  }
}
