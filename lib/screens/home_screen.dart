import 'package:flutter/material.dart';
import 'package:crowd/includes/search_input.dart';
import 'package:crowd/includes/section_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<String> _sectionItems = [
    'Reference Section',
    'Medical Section',
    'Filipiniana Section',
    'USM Publication',
    'Serials Section',
    'IT Section',
  ];

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      width: double.maxFinite,
      height: double.maxFinite,
      padding: const EdgeInsets.all(15.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SearchInput(
            searchTitle: 'Search your library section...',
          ),
          const SizedBox(
            height: 10.0,
          ),
          Text(
            "Library Section",
            style: TextStyle(
              fontSize: 27.0,
              fontWeight: FontWeight.w600,
              color: colorScheme.onPrimaryContainer,
            ),
          ),
          Text(
            'Go to your library spot without hesitation',
            style: TextStyle(
              color: colorScheme.onPrimaryContainer,
              fontSize: 15.0,
            ),
          ),
          const SizedBox(height: 5.0,),
          Expanded(
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.0,
                crossAxisSpacing: 10.0,
                mainAxisExtent: 257.0,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return SectionItem(
                  sectionName: _sectionItems[index],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
