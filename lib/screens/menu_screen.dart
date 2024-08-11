import 'package:crowd/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 15.0,
            ),
            Text(
              'Menu',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w700,
                color: AppColors.primary,
              ),
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Icon(
                        Iconsax.home,
                        size: 32,
                        color: AppColors.primary,
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text(
                        'Home',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.calendar,
                        size: 32,
                        color: AppColors.primary,
                      ),
                      Text(
                        'Schedules',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.heart,
                        size: 32,
                        color: AppColors.primary,
                      ),
                      Text(
                        'Favorites',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.shield,
                        size: 32,
                        color: AppColors.primary,
                      ),
                      Text(
                        'Security',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.setting,
                        size: 32,
                        color: AppColors.primary,
                      ),
                      Text(
                        'Settings',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Icon(
                        Iconsax.logout,
                        size: 32,
                        color: AppColors.primary,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
