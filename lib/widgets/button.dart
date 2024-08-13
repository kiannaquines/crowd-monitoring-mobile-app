import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget({
    super.key,
    required this.buttonText,
    required this.buttonTextColor,
    required this.action,
    this.icon,
    this.buttonColor,
    this.imagePath,
  });

  final String buttonText;
  final Color buttonTextColor;
  final VoidCallback action;
  final IconData? icon;
  final Color? buttonColor;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return GestureDetector(
      onTap: action,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Container(
          width: double.infinity,
          height: 46.0,
          decoration: BoxDecoration(
            color: buttonColor ?? colorScheme.primary,
          ),
          child: Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                icon != null
                    ? Icon(
                        icon,
                        color: colorScheme.onPrimary,
                      )
                    : Image.asset(
                        imagePath!,
                        width: 25.0,
                        height: 25.0,
                        alignment: Alignment.center,
                      ),
                const SizedBox(
                  width: 10.0,
                ),
                Text(
                  buttonText,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: buttonTextColor,
                    fontSize: 17.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
