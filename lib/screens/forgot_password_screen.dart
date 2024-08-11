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
    debugPrint('Email sent');
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
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const SizedBox(height: 30.0,),
              const Text(
                "Recover your account password",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              const Text(
                "Enter your email address below and we'll send you a password.",
                style: TextStyle(
                  fontSize: 18.0,
                  color: AppColors.primary,
                ),
              ),
              const SizedBox(
                height: 40.0,
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
                height: 20.0,
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
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              const Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: AppColors.primary,
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
                      color: AppColors.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
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
              const Text(
                'By signing in, you agree to our terms and \n conditions and privacy policy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: AppColors.primary,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}