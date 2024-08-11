import 'package:flutter/material.dart';
import 'package:crowd/utils/colors.dart';
import 'package:cached_network_image/cached_network_image.dart';

class ProfileAvatar extends StatefulWidget {
  const ProfileAvatar({super.key, this.imagePath, this.initial});

  final String? imagePath;
  final String? initial;

  @override
  State<ProfileAvatar> createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    if (widget.imagePath == null) {
      return CircleAvatar(
        backgroundColor: colorScheme.onPrimaryContainer,
        foregroundColor: Colors.white,
        child: Text(widget.initial!),
      );
    } else {
      return Container(
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: AppColors.yellow,
            width: 3.0,
          ),
        ),
        child: CircleAvatar(
          backgroundImage: AssetImage(widget.imagePath!),
          backgroundColor: colorScheme.onPrimaryContainer,
        ),
      );
    }
  }
}
