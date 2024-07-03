import 'package:crowd/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:crowd/includes/bottom_navigation_bar.dart';
import 'package:crowd/includes/top_navigation_bar.dart';
import 'package:crowd/screens/login_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key, required this.title});
  final String title;

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar:  HeaderNavigation(
        title: 'Good evening!',
        fullName: 'Kian Naquines, 🌙',
      ),
      body: LoginScreen(title: 'Login Screen',),
      bottomNavigationBar:  NavigationMenu(),
    );
  }
}
