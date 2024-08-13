import 'package:crowd/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:crowd/screens/login_screen.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Explorers Menu',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                  Icon(
                    IonIcons.apps,
                    color: AppColors.primary,
                    size: 24,
                  )
                ],
              ),
              const SizedBox(height: 10),
              Expanded(
                child: ListView(
                  children: [
                    _buildSectionHeader('General'),
                    _buildMenuItem(
                      icon: Iconsax.home_1_outline,
                      title: 'Home',
                      onTap: () => _handleItemTap(context, 'Home'),
                    ),
                    _buildSectionHeader('My Favorites'),
                    _buildMenuItem(
                      icon: Iconsax.heart_outline,
                      title: 'Favorite',
                      onTap: () => _handleItemTap(context, 'Favorite'),
                    ),
                    _buildSectionHeader('Account & Security'),
                    _buildMenuItem(
                      icon: Iconsax.profile_2user_outline,
                      title: 'My Profile',
                      onTap: () => _handleItemTap(context, 'Profile'),
                    ),
                    _buildMenuItem(
                      icon: Iconsax.security_safe_outline,
                      title: 'Security',
                      onTap: () => _handleItemTap(context, 'Security'),
                    ),
                    _buildMenuItem(
                      icon: Iconsax.setting_2_outline,
                      title: 'Settings',
                      onTap: () => _handleItemTap(context, 'Settings'),
                    ),
                    _buildSectionHeader('Account Session'),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 8.0),
                      decoration: BoxDecoration(
                        color: AppColors.primary,
                        borderRadius: BorderRadius.circular(10),
                        boxShadow: [
                          BoxShadow(
                            color: AppColors.darkGrey.withOpacity(0.2),
                            blurRadius: 6,
                            offset: const Offset(0, 3),
                          ),
                        ],
                      ),
                      child: ListTile(
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16.0),
                        leading: const Icon(
                          Iconsax.logout_outline,
                          color: AppColors.white,
                          size: 24,
                        ),
                        title: const Text(
                          'Sign Out',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                            color: AppColors.white,
                          ),
                        ),
                        trailing: const Icon(
                          Iconsax.arrow_right_3_outline,
                          color: AppColors.white,
                          size: 20,
                        ),
                        onTap: () => _handleLogout(context),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildMenuItem({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8.0),
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
      child: InkWell(
        onTap: onTap,
        child: ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
          leading: Icon(icon, color: AppColors.primary, size: 24),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.darkGrey,
            ),
          ),
          trailing: const Icon(
            HeroIcons.chevron_right,
            color: AppColors.primary,
            size: 20,
          ),
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 7.0),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.darkGrey,
        ),
      ),
    );
  }

  void _handleItemTap(BuildContext context, String itemName) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('$itemName selected'),
        duration: const Duration(seconds: 1),
        backgroundColor: AppColors.primary,
      ),
    );
  }

  void _handleLogout(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text(
          'Signing Out?',
          style: TextStyle(
            color: AppColors.primary,
            fontWeight: FontWeight.bold,
          ),
        ),
        content: const Text('Are you sure you want to logout?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text(
              'Cancel',
              style: TextStyle(
                color: AppColors.darkGrey,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (context) => const LoginScreen(),
                ),
              );
            },
            child: const Text(
              'Logout',
              style: TextStyle(
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
