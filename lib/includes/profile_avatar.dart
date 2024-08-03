import 'package:flutter/material.dart';

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

    if(widget.imagePath == null){
      return CircleAvatar(
        backgroundColor: colorScheme.onPrimaryContainer,
        foregroundColor: Colors.white,
        child: Text(widget.initial!),
      );
    }else{
      return CircleAvatar(
        backgroundImage: AssetImage(widget.imagePath!),
        backgroundColor: colorScheme.onPrimaryContainer,
      );
    }
  }
}