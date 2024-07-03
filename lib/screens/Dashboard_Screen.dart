import 'package:flutter/material.dart';
import 'package:crowd/includes/bottom_navigation_bar.dart';
import 'package:crowd/includes/top_navigation_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.title});
  final String title;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const HeaderNavigation(title: 'Good evening!',full_name: 'Kian Naquines, 🌙',),
      body: Center(
        child: Text(widget.title),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}