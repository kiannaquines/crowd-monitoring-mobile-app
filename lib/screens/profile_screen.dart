import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  void actionButton() {
    debugPrint('Action Button Pressed');
  }
  
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: const Center(
        child: Text('Profile Screen'),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: colorScheme.onPrimaryContainer,
        onPressed: actionButton,
        elevation: null,
        child: Icon(Icons.fingerprint, color: colorScheme.onPrimary),
      ),
    );
  }
}
