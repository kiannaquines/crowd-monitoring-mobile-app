import 'package:crowd/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';

class FavorateSectionScreen extends StatelessWidget {
  const FavorateSectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 8.0,
            horizontal: 16.0,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'My Favorite List',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w600,
                        color: AppColors.primary,
                      ),
                    ),
                    Icon(
                      Iconsax.save_2_outline,
                      color: AppColors.primary,
                      size: 30,
                    )
                  ],
                ),
                const Text(
                  "You're favorite library sections",
                  style: TextStyle(
                    color: AppColors.darkGrey,
                    fontSize: 15,
                  ),
                ),
                const SizedBox(
                  height: 10.0,
                ),
                _buildItem(
                  leadingImg: 'assets/images/section/1.jpg',
                  title: 'Information Technology',
                  subtitle:
                      'Equiped with cutting-edge technology library facility.',
                  onTap: () {
                    debugPrint('Information Technology');
                  },
                  onPressed: () {
                    debugPrint('Information Technology');
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                _buildItem(
                  leadingImg: 'assets/images/section/2.jpg',
                  title: 'USM Serials',
                  subtitle: 'Archived with university materials.',
                  onTap: () {
                    debugPrint('Information Technology');
                  },
                  onPressed: () {
                    debugPrint('Information Technology');
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                _buildItem(
                  leadingImg: 'assets/images/section/3.jpg',
                  title: 'USM Publications',
                  subtitle: 'Archived with university publication materials.',
                  onTap: () {
                    debugPrint('Information Technology');
                  },
                  onPressed: () {
                    debugPrint('Information Technology');
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                _buildItem(
                  leadingImg: 'assets/images/section/3.jpg',
                  title: 'Reference Room',
                  subtitle: 'Equiped with university reference room facility.',
                  onTap: () {
                    debugPrint('Information Technology');
                  },
                  onPressed: () {
                    debugPrint('Information Technology');
                  },
                ),
                const SizedBox(
                  height: 10.0,
                ),
                _buildItem(
                  leadingImg: 'assets/images/section/4.jpg',
                  title: 'Filipiniana',
                  subtitle: 'Equiped with filipiniana facility.',
                  onTap: () {
                    debugPrint('Information Technology');
                  },
                  onPressed: () {
                    debugPrint('Information Technology');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildItem({
    required String leadingImg,
    required String title,
    required String subtitle,
    required VoidCallback onTap,
    required VoidCallback onPressed,
  }) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.surface,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: AppColors.mediumGrey.withOpacity(0.2),
            blurRadius: 6,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 15.0,
          vertical: 10.0,
        ),
        leading: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: CircleAvatar(
            radius: 30,
            child: Image.asset(
              leadingImg,
              fit: BoxFit.cover,
              height: 120,
            ),
          ),
        ),
        title: Text(
          title,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
            color: AppColors.darker,
          ),
        ),
        subtitle: Text(
          subtitle,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: AppColors.darker,
          ),
        ),
        trailing: IconButton(
          onPressed: onPressed,
          icon: const Icon(
            Bootstrap.heart_fill,
            color: AppColors.primary,
            size: 25,
          ),
        ),
        onTap: onTap,
      ),
    );
  }
}
