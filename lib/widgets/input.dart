import 'package:flutter/material.dart';

class InputWidget extends StatefulWidget {
  const InputWidget({super.key, required this.inputTitle, required this.inputIcon, required this.obscureText});
  final String inputTitle;
  final IconData inputIcon;
  final bool obscureText;

  @override
  State<InputWidget> createState() => _InputWidgetState();
}

class _InputWidgetState extends State<InputWidget> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final String title = widget.inputTitle;
    final IconData icon = widget.inputIcon;
    final bool type = widget.obscureText;

    return TextFormField(
      obscureText: type,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorScheme.primary,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorScheme.primary,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        prefixIcon: Icon(
          icon,
          color: colorScheme.primary,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        label: Text(
          title,
          style: TextStyle(
            color: colorScheme.primary,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: colorScheme.primary,
      )
    );
  }
}
