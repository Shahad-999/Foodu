import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class ProfileImagePicker extends StatefulWidget {
  const ProfileImagePicker({Key? key}) : super(key: key);

  @override
  State<ProfileImagePicker> createState() => _ProfileImagePickerState();
}

class _ProfileImagePickerState extends State<ProfileImagePicker> {
  ImagePicker picker = ImagePicker();
  XFile? image;

  onTapImage() async {
    image = await picker.pickImage(source: ImageSource.gallery);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTapImage,
        child: Container(
          height: MediaQuery.of(context).size.width * 0.3,
          width: MediaQuery.of(context).size.width * 0.3,
          decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.primary,
              shape: BoxShape.circle,
              gradient: image == null
                  ? const LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                          Color(0xFF86BA97),
                          Color(0xFF1BAC4B),
                        ])
                  : null),
          child: image != null
              ? Transform.scale(
                  scale: 1,
                  alignment:
                      Alignment.center,
                  child: CircleAvatar(
                    backgroundImage: FileImage(File(image!.path)),
                  ),
                )
              : null,
        ));
  }
}
