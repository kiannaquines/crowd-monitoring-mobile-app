import 'package:crowd/screens/login_screen.dart';
import 'package:crowd/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

class ConfirmationEmailScreen extends StatefulWidget {
  const ConfirmationEmailScreen({super.key});
  @override
  State<ConfirmationEmailScreen> createState() =>
      _ConfirmationEmailScreenState();
}

class _ConfirmationEmailScreenState extends State<ConfirmationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title: const Text(
          'Email Confirmation',
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(
                      height: 60.0,
                    ),
                    const Icon(
                      Iconsax.sms_notification_outline,
                      size: 120.0,
                      color: AppColors.primary,
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    const Center(
                      child: Text(
                        'Account Confirmation',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 25.0,
                          color: AppColors.primary,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    const Text(
                      'Please check your inbox for the confirmation link.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: AppColors.primary,
                      ),
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        debugPrint('Resend Confirmation Email');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: const BoxDecoration(color: AppColors.primary),
                          child: const Center(
                            child: Text(
                              'Resend Confirmation Email',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.white,
                                fontSize: 18.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    GestureDetector(
                      onTap: (){
                        debugPrint('Back to Login');
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10.0),
                        child: Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: const BoxDecoration(
                            color: Colors.transparent,
                          ),
                          child: Center(
                            child: GestureDetector(
                              onTap: (){
                                Navigator.of(context).pushReplacement(
                                  MaterialPageRoute(
                                    builder: (context) => const LoginScreen(),
                                  ),
                                );
                              },
                              child: const Text(
                                'Back to Login',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: AppColors.primary,
                                  fontSize: 18.0,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            left: 0,
            right: 0,
            bottom: 16,
            child: Text(
              'Developed with ❤️ by the creator.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14.0,
                color: AppColors.primary,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
