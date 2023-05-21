import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'profile_image.dart';

class ProfileImagePicker extends StatefulWidget {
  const ProfileImagePicker({Key? key, this.imageUrl}) : super(key: key);

  final String? imageUrl;
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
        child: ProfileImage(
          size: MediaQuery.of(context).size.width * 0.3,
          image:  widget.imageUrl != null ? getImageFromUrl(widget.imageUrl!): getImageFromDevice(image?.path),
        ));
  }


  ImageProvider? getImageFromDevice(String? path){
    return path == null ? null : FileImage(File(path));
  }

  ImageProvider? getImageFromUrl(String url){
    return NetworkImage(url);
  }

}
