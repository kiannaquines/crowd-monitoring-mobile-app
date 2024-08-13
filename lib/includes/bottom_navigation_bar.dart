import 'package:flutter/material.dart';
import 'package:crowd/utils/colors.dart';
import 'package:icons_plus/icons_plus.dart';

class NavigationMenu extends StatefulWidget {
  const NavigationMenu(
      {super.key,
      required this.currentIndexPage,
      required this.destinationPage});

  final int currentIndexPage;
  final ValueChanged<int> destinationPage;

  @override
  State<NavigationMenu> createState() => _NavigationMenuState();
}

class _NavigationMenuState extends State<NavigationMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: NavigationBar(
          height: 75.0,
          backgroundColor: AppColors.primary,
          selectedIndex: widget.currentIndexPage,
          onDestinationSelected: widget.destinationPage,
          animationDuration: const Duration(milliseconds: 900),
          indicatorColor: AppColors.white,
          destinations: const [
            NavigationDestination(
              icon: Icon(
                Iconsax.building_4_outline,
              ),
              label: 'Library Room',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.save_2_outline,
              ),
              label: 'Favorates',
            ),
            NavigationDestination(
              icon: Icon(
                Iconsax.more_2_outline,
              ),
              label: 'More',
            ),
          ],
        ),
      ),
    );
  }
}
