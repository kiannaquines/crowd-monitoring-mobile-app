import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crowd/utils/colors.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key, required this.searchTitle});
  final String searchTitle;

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {
    final String inputSearchTitle = widget.searchTitle;

    return TextFormField(
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1.0,
            color: Colors.white,
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
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              10,
            ),
          ),
        ),
        prefixIcon: const Icon(
          Iconsax.search_favorite_1,
          color: Colors.white,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        label: Text(
          inputSearchTitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
