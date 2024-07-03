import 'package:flutter/material.dart';

class SectioninformationScreen extends StatefulWidget {
  const SectioninformationScreen({super.key, required this.title});
  final String title;

  @override
  State<SectioninformationScreen> createState() => _SectioninformationScreenState();
}

class _SectioninformationScreenState extends State<SectioninformationScreen> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Center(child: Text(widget.title)),
    );
  }
}