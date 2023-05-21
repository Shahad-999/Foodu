import 'package:flutter/material.dart';

class ProfileImage extends StatelessWidget {
  const ProfileImage({Key? key, this.image, required this.size}) : super(key: key);

  final ImageProvider? image;

  final double size;
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: size,
      width: size,
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
          backgroundImage: image,
        ),
      )
          : null,
    );
  }
}
