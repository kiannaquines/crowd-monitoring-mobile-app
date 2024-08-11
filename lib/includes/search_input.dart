import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crowd/utils/colors.dart';

class SearchInput extends StatefulWidget {
  const SearchInput({super.key});

  @override
  State<SearchInput> createState() => _SearchInputState();
}

class _SearchInputState extends State<SearchInput> {
  @override
  Widget build(BuildContext context) {

    return TextFormField(
      keyboardType: TextInputType.text,
      autocorrect: false,
      decoration: const InputDecoration(
        focusedBorder: OutlineInputBorder(
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
        enabledBorder: OutlineInputBorder(
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
          Iconsax.search_favorite_1,
          color: AppColors.primary,
        ),
        floatingLabelBehavior: FloatingLabelBehavior.never,
        hintText: 'Search your library spot...',
        hintStyle: TextStyle(
          color: AppColors.primary,
        )
      ),
      style: const TextStyle(
        color: AppColors.secondary,
        fontSize: 18.0,
        fontWeight: FontWeight.w500,
      ),
      cursorColor: AppColors.primary,
    );
  }
}
