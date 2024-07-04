import 'package:flutter/material.dart';
import 'package:crowd/includes/top_navigation_bar.dart';

class SectioninformationScreen extends StatefulWidget {
  const SectioninformationScreen({super.key, required this.title});
  final String title;

  @override
  State<SectioninformationScreen> createState() => _SectioninformationScreenState();
}

class _SectioninformationScreenState extends State<SectioninformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HeaderNavigation(title: widget.title,),
      body: Center(child: Text(widget.title)),
    );
  }
}