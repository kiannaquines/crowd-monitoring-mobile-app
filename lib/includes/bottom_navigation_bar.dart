import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu({super.key});

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    int currentPageIndex = 0;

    return NavigationBar(
      selectedIndex: currentPageIndex,
      onDestinationSelected: (int pageIndex) => {
        setState(() {
          currentPageIndex = pageIndex;
        })
      },
      destinations: const [
        NavigationDestination(
          icon: Icon(Iconsax.home),
          label: 'Home',
        ),
        NavigationDestination(
          icon: Icon(Iconsax.chart),
          label: 'Sections',
        ),
        NavigationDestination(
          icon: Icon(Iconsax.heart),
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
