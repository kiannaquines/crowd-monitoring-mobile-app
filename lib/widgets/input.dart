import 'package:flutter/material.dart';
import 'package:crowd/utils/colors.dart';

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

    final String title = widget.inputTitle;
    final IconData icon = widget.inputIcon;
    final bool type = widget.obscureText;

    return TextFormField(
      obscureText: type,
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: AppColors.primary,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        prefixIcon: Icon(
          icon,
          color: AppColors.primary,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.auto,
        label: Text(
          title,
          style: const TextStyle(
            color: AppColors.primary,
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      style: const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColors.primary,
      ),
      cursorColor: AppColors.primary,
    );
  }
}
