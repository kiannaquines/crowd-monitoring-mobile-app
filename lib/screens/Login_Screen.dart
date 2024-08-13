import 'package:flutter/material.dart';
import 'package:crowd/widgets/input.dart';
import 'package:crowd/widgets/button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crowd/screens/register_screen.dart';
import 'package:crowd/screens/forgot_password_screen.dart';
import 'package:crowd/screens/main_screen.dart';
import 'package:crowd/utils/colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool? isChecked = true;

  void logIn() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const MainScreen(),
      ),
    );
  }

  void signUpWithEmail() {
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(
        builder: (context) => const RegisterScreen(),
      ),
    );
  }

  void signUpWithFacebook() {
    debugPrint('Facebook sign up called');
  }

  void forgotPassword() {
    Navigator.of(context).pushReplacement(MaterialPageRoute(
      builder: (context) => const ForgotPasswordScreen(),
    ));
  }

  void rememberMe() {
    debugPrint('Remember me called');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: AppColors.primary,
        title: const Text(
          'Start your journey',
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
                    "Sign In",
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: AppColors.primary,
                    ),
                  ),
                  const SizedBox(
                    height: 5.0,
                  ),
                  const Text(
                    "Start authenticating your account",
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
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: forgotPassword,
                    child: const Text(
                      'Forgot Password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: AppColors.primary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  const InputWidget(
                    inputTitle: 'Password',
                    inputIcon: Iconsax.lock,
                    obscureText: true,
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  Container(
                    padding: EdgeInsets.zero,
                    margin: EdgeInsets.zero,
                    child: Row(
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
                          checkColor: Colors.white,
                          materialTapTargetSize:
                              MaterialTapTargetSize.values.last,
                          visualDensity: VisualDensity.adaptivePlatformDensity,
                        ),
                        const Text(
                          'Remember me',
                          style: TextStyle(
                            color: AppColors.primary,
                            fontSize: 15.0,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 2.0,
                  ),
                  ButtonWidget(
                    buttonText: 'Sign In',
                    icon: Iconsax.login,
                    buttonTextColor: AppColors.white,
                    buttonColor: AppColors.primary,
                    action: logIn,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      const Text(
                        'Dont have an account yet?',
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
                        onTap: signUpWithEmail,
                        child: const Text(
                          'Sign up',
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
                    height: 30.0,
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
                    height: 30.0,
                  ),
                  ButtonWidget(
                    buttonText: 'Sign In with Email',
                    buttonColor: AppColors.darker,
                    buttonTextColor: AppColors.white,
                    icon: Icons.email,
                    action: signUpWithEmail,
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
