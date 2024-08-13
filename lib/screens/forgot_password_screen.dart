import 'package:crowd/screens/confirmation_email_screen.dart';
import 'package:crowd/screens/login_screen.dart';
import 'package:crowd/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:crowd/widgets/input.dart';
import 'package:crowd/widgets/button.dart';
import 'package:iconsax/iconsax.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  void sendEmail() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const ConfirmationEmailScreen(),
      ),
    );
  }

  void signInWithEmail() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  void signUpWithFacebook() {
    debugPrint('Facebook sign up called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title: const Text(
          'Recover Password',
          style: TextStyle(
            color: AppColors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Stack(
        children: <Widget>[
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: SingleChildScrollView(
              padding:
                  const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    "Forgot your account password?",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Enter your email to send you a confirmation link.",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: AppColors.darkGrey,
                    ),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const InputWidget(
                    inputTitle: 'Email Address',
                    inputIcon: Iconsax.sms,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ButtonWidget(
                    buttonText: 'Send Confirmation',
                    icon: Iconsax.sms,
                    buttonTextColor: AppColors.white,
                    buttonColor: AppColors.primary,
                    action: sendEmail,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Already have an account?',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      const SizedBox(
                        width: 5.0,
                      ),
                      GestureDetector(
                        onTap: signInWithEmail,
                        child: const Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 15.0,
                            color: AppColors.primary,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Expanded(
                        child: Divider(
                          color: AppColors.darkGrey,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        'OR',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 15.0,
                          color: AppColors.primary,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Expanded(
                        child: Divider(
                          color: AppColors.darkGrey,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ButtonWidget(
                    buttonText: 'Sign In with Email',
                    buttonColor: AppColors.darker,
                    buttonTextColor: AppColors.white,
                    icon: Icons.email,
                    action: signInWithEmail,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonWidget(
                    buttonText: 'Sign In with Facebook',
                    buttonColor: AppColors.darker,
                    buttonTextColor: AppColors.white,
                    icon: Icons.facebook,
                    action: signUpWithFacebook,
                  ),
                  const SizedBox(
                    height: 35.0,
                  ),
                ],
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
