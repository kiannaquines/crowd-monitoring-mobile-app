import 'package:flutter/material.dart';

class SectionScreen extends StatefulWidget {
  const SectionScreen({super.key, required this.title});
  final String title;
  @override
  State<SectionScreen> createState() => _SectionScreenState();
}

class _SectionScreenState extends State<SectionScreen> {
  @override
  Widget build(BuildContext context) {
    return const Material(
      child: Center(
        child: Text('Section Schedule'),
      ),
    );
  }
}