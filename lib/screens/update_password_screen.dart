import 'package:crowd/widgets/button.dart';
import 'package:crowd/widgets/input.dart';
import 'package:flutter/material.dart';
import 'package:crowd/utils/colors.dart';
import 'package:icons_plus/icons_plus.dart';

class UpdatePasswordScreen extends StatefulWidget {
  const UpdatePasswordScreen({super.key});

  @override
  State<UpdatePasswordScreen> createState() => _UpdatePasswordScreenState();
}

class _UpdatePasswordScreenState extends State<UpdatePasswordScreen> {
  void actionButton() {
    debugPrint('Action Button Pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.lightGrey,
      appBar: AppBar(
        backgroundColor: AppColors.primary,
        foregroundColor: AppColors.onPrimary,
        centerTitle: true,
        title: const Text(
          'Profile',
          style: TextStyle(
            fontWeight: FontWeight.w600,
          ),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15.0),
        child: SingleChildScrollView(
          child: Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[              
                const Text(
                  'General Information',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(height: 10),
                const InputWidget(
                    inputTitle: 'Firstname',
                    inputIcon: Iconsax.user_add_outline,
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),
                const InputWidget(
                    inputTitle: 'Lastname',
                    inputIcon: Iconsax.user_add_outline,
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  'Account Details',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const InputWidget(
                    inputTitle: 'Username',
                    inputIcon: Iconsax.user_add_outline,
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),
                const InputWidget(
                    inputTitle: 'Email Address',
                    inputIcon: Iconsax.user_add_outline,
                    obscureText: false),
                const SizedBox(height: 15),
                const Text(
                  'Password',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: AppColors.primary,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const InputWidget(
                    inputTitle: 'Password',
                    inputIcon: Icons.password_outlined,
                    obscureText: false),
                const SizedBox(
                  height: 15,
                ),
                const InputWidget(
                    inputTitle: 'Confirm Password',
                    inputIcon: Icons.password_outlined,
                    obscureText: false),
                const SizedBox(height: 15),
                ButtonWidget(
                  buttonText: 'Update Profile',
                  buttonColor: AppColors.primary,
                  buttonTextColor: AppColors.onPrimary,
                  action: actionButton,
                  icon: Iconsax.edit_outline,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildInfoItem({required String title, required String content}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              const Icon(
                Iconsax.info_circle_outline,
                color: AppColors.primary,
                size: 15.0,
              ),
              const SizedBox(width: 8.0),
              Text(
                title,
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
          Text(
            content,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w400,
              color: AppColors.darkGrey,
            ),
          ),
        ],
      ),
    );
  }
}
