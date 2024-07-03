import 'package:flutter/material.dart';
import 'package:crowd/includes/navigation_bar.dart';

class DashboardScreen extends StatefulWidget {
  const DashboardScreen({super.key, required this.title});
  final String title;

  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Scaffold(
        bottomNavigationBar: NavigationMenu(),
      )
    );
  }
}