import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key, required this.currentIndexPage, required this.destinationPage});

  final int currentIndexPage;
  final ValueChanged<int> destinationPage;

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return NavigationBar(
      selectedIndex: widget.currentIndexPage,
      onDestinationSelected: widget.destinationPage,
      animationDuration: const Duration(milliseconds: 900),
      destinations: const [
        NavigationDestination(
          icon: Icon(Iconsax.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Iconsax.scan),
          label: 'Schedules',
        ),
        NavigationDestination(
          icon: Icon(Iconsax.heart,),
          label: 'Favorate',
        ),
        NavigationDestination(
          icon: Icon(Iconsax.user),
          label: 'Profile',
        ),
      ],
    );
  }
}
