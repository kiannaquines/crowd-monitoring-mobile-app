import 'package:flutter/material.dart';
import 'package:crowd/widgets/input.dart';
import 'package:crowd/widgets/button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crowd/screens/login_screen.dart';
import 'package:crowd/utils/colors.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});
  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool? isChecked = true;
  void createAccount() {
    debugPrint('Function called');
  }

  void signUpWithEmail() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
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
          'Sign Up',
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
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    "Create an Account",
                    style: TextStyle(
                      fontSize: 26.0,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Start by creating your account.",
                    style: TextStyle(
                      fontSize: 18.0,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const InputWidget(
                    inputTitle: 'Email Address',
                    inputIcon: Iconsax.sms,
                    obscureText: false,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const InputWidget(
                    inputTitle: 'Password',
                    inputIcon: Iconsax.lock,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const InputWidget(
                    inputTitle: 'Confirm Password',
                    inputIcon: Iconsax.lock,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Checkbox(
                        value: isChecked,
                        onChanged: (bool? value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                        activeColor: AppColors.primary,
                        checkColor: AppColors.white,
                        materialTapTargetSize:
                            MaterialTapTargetSize.values.last,
                        visualDensity: VisualDensity.adaptivePlatformDensity,
                      ),
                      const Text(
                        'Agree with terms and Condition',
                        style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 15.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  ButtonWidget(
                    buttonText: 'Create Account',
                    icon: Iconsax.login,
                    buttonTextColor: AppColors.white,
                    buttonColor: AppColors.primary,
                    action: createAccount,
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
                          fontWeight: FontWeight.w600,
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
                    buttonText: 'Sign Up with Email',
                    buttonColor: AppColors.darker,
                    buttonTextColor: AppColors.white,
                    icon: Icons.email,
                    action: signUpWithEmail,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ButtonWidget(
                    buttonText: 'Sign Up with Facebook',
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
              'Developed with ❤️ by the developer.',
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
