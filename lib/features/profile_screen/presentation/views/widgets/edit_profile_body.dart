import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:foodu/core/widgets/app_button.dart';
import 'package:get/get.dart';

import 'profile_image_picker.dart';

class EditProfileBody extends StatelessWidget {
  const EditProfileBody({Key? key}) : super(key: key);

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
            padding: const EdgeInsets.only(bottom: 100, top: 48),
            children: [
              ProfileImagePicker()
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

  onClickUpdate() {}
}
