import 'package:crowd/screens/favorate_section_screen.dart';
import 'package:crowd/screens/home_screen.dart';
import 'package:crowd/screens/profile_screen.dart';
import 'package:crowd/screens/section_screen.dart';
import 'package:flutter/material.dart';
import 'package:crowd/includes/bottom_navigation_bar.dart';
import 'package:crowd/includes/top_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});
  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int currentIndex = 0;

  void onChangePage(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {

    Widget bodyWidget;

    switch (currentIndex) {
      case 0:
        bodyWidget = const HomeScreen();
        break;
      case 1:
        bodyWidget = const SectionScreen(title: 'Section');
      case 2:
        bodyWidget = const FavorateSectionScreen(title: 'Favorate Screen');
      case 3:
        bodyWidget = const ProfileScreen(title: 'Profile Screen');
      default:
        bodyWidget = const HomeScreen();
    }

    return Scaffold(
      appBar: const HeaderNavigation(
        title: 'Good evening!',
        fullName: 'Kian Naquines, 🌙',
      ),
      body: bodyWidget,
      bottomNavigationBar: NavigationMenu(
        currentIndexPage: currentIndex,
        destinationPage: onChangePage,
      ),
    );
  }
}
