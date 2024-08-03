import 'package:flutter/material.dart';
import 'package:crowd/widgets/input.dart';
import 'package:crowd/widgets/button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crowd/screens/register_screen.dart';
import 'package:crowd/screens/forgot_password_screen.dart';
import 'package:crowd/screens/main_screen.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'TaraLibrary',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w600,
            color: colorScheme.primary,
          ),
        ),
      ),
      body: Stack(children: <Widget>[
        SingleChildScrollView(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Start your college journey with TaraLibrary!",
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 10.0,
              ),
              Text(
                "Start your session by logging in.",
                style: TextStyle(
                  fontSize: 18.0,
                  color: colorScheme.primary,
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
                height: 10.0,
              ),
              GestureDetector(
                onTap: forgotPassword,
                child: Text(
                  'Forgot Password?',
                  textAlign: TextAlign.right,
                  style: TextStyle(
                    fontSize: 15.0,
                    color: colorScheme.primary,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
              const InputWidget(
                inputTitle: 'Password',
                inputIcon: Iconsax.lock,
                obscureText: true,
              ),
              const SizedBox(
                height: 20.0,
              ),
              ButtonWidget(
                buttonText: 'Sign In',
                icon: Iconsax.login,
                buttonTextColor: colorScheme.onPrimary,
                buttonColor: colorScheme.onPrimaryFixedVariant,
                action: logIn,
              ),
              const SizedBox(
                height: 20.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Dont have an account yet?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  GestureDetector(
                    onTap: signUpWithEmail,
                    child: Text(
                      'Sign up',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 15.0,
                        color: colorScheme.primary,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Divider(
                      color: colorScheme.primary,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    'OR',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 15.0,
                      color: colorScheme.primary,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(
                    width: 5.0,
                  ),
                  Expanded(
                    child: Divider(
                      color: colorScheme.primary,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              ButtonWidget(
                buttonText: 'Sign In with Email',
                buttonColor: colorScheme.onPrimaryContainer,
                buttonTextColor: colorScheme.onTertiary,
                icon: Icons.email,
                action: signUpWithEmail,
              ),
              const SizedBox(
                height: 15.0,
              ),
              ButtonWidget(
                buttonText: 'Sign In with Facebook',
                buttonColor: colorScheme.onPrimaryContainer,
                buttonTextColor: colorScheme.onTertiary,
                icon: Icons.facebook,
                action: signUpWithFacebook,
              ),
              const SizedBox(
                height: 35.0,
              ),
              Text(
                'By signing in, you agree to our terms and \n conditions and privacy policy.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 14.0,
                  color: colorScheme.primary,
                ),
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
