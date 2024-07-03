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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderNavigation(
        title: 'Good evening!',
        fullName: 'Kian Naquines, 🌙',
      ),
      body: Center(
        child: Text(widget.title),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}
