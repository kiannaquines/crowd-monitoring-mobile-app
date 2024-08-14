import 'package:crowd/screens/favorate_section_screen.dart';
import 'package:crowd/screens/home_screen.dart';
import 'package:crowd/screens/menu_screen.dart';
import 'package:flutter/material.dart';
import 'package:crowd/includes/bottom_navigation_bar.dart';
import 'package:crowd/includes/top_navigation_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

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
        bodyWidget = const FavorateSectionScreen();
      case 2:
        bodyWidget = const MenuScreen();
      default:
        bodyWidget = const HomeScreen();
    }

    return Scaffold(
      appBar: const HeaderNavigation(
        title: 'Good evening 🌙',
        fullName: 'Kian Naquines',
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 15.0),
        child: bodyWidget,
      ),
      bottomNavigationBar: NavigationMenu(
        currentIndexPage: currentIndex,
        destinationPage: onChangePage,
      ),
    );
  }
}
