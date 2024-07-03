import 'package:flutter/material.dart';

class HeaderNavigation extends StatefulWidget implements PreferredSizeWidget{
  const HeaderNavigation({super.key, required this.title});
  final String title;

  @override
  State<HeaderNavigation> createState() => _HeaderNavigationState();
  
  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight + 20);
}

class _HeaderNavigationState extends State<HeaderNavigation> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text('Good morning!'),
    );
  }
}