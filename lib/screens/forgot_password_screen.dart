import 'package:flutter/material.dart';
import 'package:crowd/widgets/input.dart';
import 'package:crowd/widgets/button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crowd/screens/register_screen.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});
  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {

  void logIn() {
    debugPrint('Function called');
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

  void forgotPassword(){
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => const ForgotPasswordScreen(),)
    );
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Forgot Password',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w600,
            color: colorScheme.primary,
          ),
        ),
        leading: null,
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
                "Enter your email address below and we'll send you a password.",
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
                height: 20.0,
              ),
              ButtonWidget(
                buttonText: 'Send Confirmation',
                icon: Iconsax.sms,
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
                    'Already have an account?',
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
                      'Sign In',
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