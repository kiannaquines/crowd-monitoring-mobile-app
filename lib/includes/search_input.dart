import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key, required this.searchTitle});
  final String searchTitle;

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    final String inputSearchTitle = widget.searchTitle;

    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: colorScheme.onPrimaryContainer,
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
            color: colorScheme.onPrimaryContainer,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        prefixIcon: Icon(
          Iconsax.search_favorite_1,
          color: colorScheme.onPrimaryContainer,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        label: Text(
          inputSearchTitle,
          style: TextStyle(
            color: colorScheme.onPrimaryContainer,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
