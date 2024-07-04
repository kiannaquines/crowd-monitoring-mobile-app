import 'package:flutter/material.dart';

class SectionItem extends StatelessWidget {
  const SectionItem({super.key, required this.sectionName});
  final String sectionName;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: ClipRRect(
        borderRadius: const BorderRadius.all(
          Radius.circular(
            5,
          ),
        ),
        child: Container(
          width: 60,
          height: double.maxFinite,
          color: colorScheme.primaryContainer,
          child: Center(
            child: Text(sectionName),
          ),
        ),
      ),
    );
  }
}
