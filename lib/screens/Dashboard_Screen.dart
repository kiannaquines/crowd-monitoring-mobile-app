import 'package:flutter/material.dart';
import 'package:crowd/includes/navigation_bar.dart';
import 'package:crowd/includes/header_navigation.dart';

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
      appBar: AppBar(
        automaticallyImplyLeading: true,
        title: const Text('Good evening!'),
      ),
      body: Container(
        child: Center(
          child: Text(widget.title),
        ),
      ),
      bottomNavigationBar: const NavigationMenu(),
    );
  }
}