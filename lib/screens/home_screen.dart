import 'package:flutter/material.dart';
import 'package:crowd/includes/section_item.dart';
import 'package:crowd/screens/section_information_screen.dart';
import 'package:crowd/utils/colors.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';

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
      'description': 'KEPLRC Reference',
      'image': 'assets/images/section/reference.jpg',
    },
    {
      'id': 'f2538a3a-38be-4f1f-a308-1093528300ea',
      'name': 'Medical Section',
      'description': 'KEPLRC Medical',
      'image': 'assets/images/section/medical.jpg',
    },
    {
      'id': '45d63b1e-a1ed-429e-bce2-8a47579e4136',
      'name': 'Filipiniana Section',
      'description': 'KEPLRC Filipiniana',
      'image': 'assets/images/section/serials.jpg',
    },
    {
      'id': '34b3320d-7172-4845-bdd4-84d993b1283d',
      'name': 'Publication Section',
      'description': 'KEPLRC Publication',
      'image': 'assets/images/section/publication.jpg',
    },
    {
      'id': 'f035c474-f8f2-4ac6-9a23-c821bc06323b',
      'name': 'USM Serials',
      'description': 'KEPLRC Serials',
      'image': 'assets/images/section/2.jpg',
    },
    {
      'id': 'bb114cbb-cb6d-4668-b397-589fafdb71ed',
      'name': 'Information Technology',
      'description': 'KEPLRC IT Section',
      'image': 'assets/images/section/3.jpg',
    },
  ];

  void _handleRedirectClick() {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const SectioninformationScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Library Sections',
                  style: TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                    color: AppColors.primary,
                  ),
                ),
                Icon(
                  Iconsax.building_4_outline,
                  color: AppColors.primary,
                  size: 30,
                )
              ],
            ),
            const Text(
              'Explore the library sections',
              style: TextStyle(
                color: AppColors.darkGrey,
                fontSize: 18,
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                  crossAxisSpacing: 10.0,
                  mainAxisExtent: 215.0,
                ),
                itemCount: 6,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: SectionItem(
                      onPressed: _handleRedirectClick,
                      sectionName: sectionItems.elementAt(index)['name'],
                      sectionImage: sectionItems.elementAt(index)['image'],
                      sectionDescription:
                          sectionItems.elementAt(index)['description'],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
