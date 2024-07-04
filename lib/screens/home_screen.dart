import 'package:flutter/material.dart';
import 'package:crowd/includes/search_input.dart';
import 'package:crowd/utils/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: const EdgeInsets.all(15.0),
      child: const Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchInput(
            searchTitle: 'Search your section...',
          ),
          SizedBox(
            height: 15.0,
          ),
          Text(
            "Section Available",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
