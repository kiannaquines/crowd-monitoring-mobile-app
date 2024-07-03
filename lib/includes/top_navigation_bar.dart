import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class HeaderNavigation extends StatefulWidget implements PreferredSizeWidget{
  const HeaderNavigation({super.key, required this.title, required this.fullName});
  final String title;
  final String fullName;

  @override
  State<HeaderNavigation> createState() => _HeaderNavigationState();
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}

class _HeaderNavigationState extends State<HeaderNavigation> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.fullName,style: const TextStyle(fontSize: 12.0),),
          Text(widget.title,
              style: const TextStyle(fontWeight: FontWeight.w500, fontSize: 18.0)
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(onPressed: () => {}, icon: const Icon(Iconsax.menu))
      ],
    );
  }
}