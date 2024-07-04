import 'package:flutter/material.dart';
import 'package:crowd/includes/search_input.dart';
import 'package:crowd/includes/section_item.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  final List<Map<String, dynamic>> sectionItems = [
    {
      'id': 'c896a933-1e11-488b-b5b5-ab6d1f5f4ae5',
      'name': 'Reference Section',
      'description': 'KEPLRC Reference Section',
      'image': 'assets/images/section/reference.jpg',
    },
    {
      'id': 'f2538a3a-38be-4f1f-a308-1093528300ea',
      'name': 'Medical Section',
      'description': 'KEPLRC Medical Section',
      'image': 'assets/images/section/medical.jpg',
    },
    {
      'id': '45d63b1e-a1ed-429e-bce2-8a47579e4136',
      'name': 'Filipiniana Section',
      'description': 'KEPLRC Filipiniana Section',
      'image': 'assets/images/section/reference.jpg',
    },
    {
      'id': '34b3320d-7172-4845-bdd4-84d993b1283d',
      'name': 'USM Publication',
      'description': 'KEPLRC USM Publication Section',
      'image': 'assets/images/section/reference.jpg',
    },
    {
      'id': 'f035c474-f8f2-4ac6-9a23-c821bc06323b',
      'name': 'Serials Section',
      'description': 'KEPLRC Serials Section',
      'image': 'assets/images/section/reference.jpg',
    },
    {
      'id': 'bb114cbb-cb6d-4668-b397-589fafdb71ed',
      'name': 'Information Tech Section',
      'description': 'KEPLRC IT Section',
      'image': 'assets/images/section/reference.jpg',
    },
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
            "KEPLRC Library Section",
            style: TextStyle(
              fontSize: 25.0,
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
                mainAxisExtent: 240.0,
              ),
              itemCount: 6,
              itemBuilder: (context, index) {
                return SectionItem(
                  sectionName: sectionItems.elementAt(index)['name'],
                  sectionImage: sectionItems.elementAt(index)['image'],
                  sectionDescription: sectionItems.elementAt(index)['description'],
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
