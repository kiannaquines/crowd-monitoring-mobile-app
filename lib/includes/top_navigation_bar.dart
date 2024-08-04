import 'package:flutter/material.dart';
import 'package:crowd/includes/profile_avatar.dart';
import 'package:iconsax/iconsax.dart';

class HeaderNavigation extends StatefulWidget implements PreferredSizeWidget {
  const HeaderNavigation({super.key, required this.title, this.fullName});
  final String title;
  final String? fullName;

  @override
  State<HeaderNavigation> createState() => _HeaderNavigationState();

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 5);
}

class _HeaderNavigationState extends State<HeaderNavigation> {
  @override
  Widget build(BuildContext context) {
    bool isEmptyUser = widget.fullName?.isEmpty ?? true;

    final colorScheme = Theme.of(context).colorScheme;

    return AppBar(
      centerTitle: !isEmptyUser ? false : false,
      title: !isEmptyUser
          ? Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 18.0,
                    color: colorScheme.onPrimaryContainer,
                  ),
                ),
                Text(
                  'Hello, ${widget.fullName}!',
                  style: TextStyle(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                    color: colorScheme.onPrimaryContainer,
                  ),
                ),
              ],
            )
          : Text(
              widget.title,
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 18.0,
              ),
            ),
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.only(
            right: 15.0,
          ),
          child: !isEmptyUser
              ? GestureDetector(
                  onTap: () {
                    debugPrint("Go to profile page");
                  },
                  child: const ProfileAvatar(
                    imagePath: 'assets/images/profile/avatar.jfif',
                  ),
                )
              : IconButton(
                  onPressed: () {
                    debugPrint('Icon Button');
                  },
                  icon: const Icon(Iconsax.heart),
                ),
        ),
      ],
    );
  }
}
