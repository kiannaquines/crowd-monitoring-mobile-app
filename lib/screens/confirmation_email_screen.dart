import 'package:flutter/material.dart';

class ConfirmationemailScreen extends StatefulWidget {
  const ConfirmationemailScreen({super.key,required this.title});
  final String title;
  @override
  State<ConfirmationemailScreen> createState() => _ConfirmationemailScreenState();
}

class _ConfirmationemailScreenState extends State<ConfirmationemailScreen> {
  @override
  Widget build(BuildContext context) {
    return Center(child: Text(widget.title));
  }
}