import 'package:flutter/material.dart';

class FavorateSectionScreen extends StatefulWidget {
  const FavorateSectionScreen({super.key, required this.title});
  final String title;

  @override
  State<FavorateSectionScreen> createState() => _FavorateSectionScreenState();
}

class _FavorateSectionScreenState extends State<FavorateSectionScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(widget.title),);
  }
}