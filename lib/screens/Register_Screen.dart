import 'package:flutter/material.dart';
import 'package:crowd/widgets/input.dart';
import 'package:crowd/widgets/button.dart';
import 'package:iconsax/iconsax.dart';
import 'package:crowd/screens/login_screen.dart';

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
        builder: (context) => const LoginScreen(),
      ),
    );
  }

  void signUpWithFacebook() {
    debugPrint('Facebook sign up called');
  }

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Create Account',
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
                "Start your college journey with TaraLibrary App!",
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
                "Start by creating your account.",
                style: TextStyle(
                  fontSize: 18.0,
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 30.0,
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
                height: 25.0,
              ),
              const InputWidget(
                inputTitle: 'Confirm Password',
                inputIcon: Iconsax.lock,
                obscureText: true,
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
                    ),
                    Text(
                      'Agree with terms and Condition',
                      style: TextStyle(
                        color: colorScheme.primary,
                        fontSize: 15.0,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
              ),
              ButtonWidget(
                buttonText: 'Create Account',
                icon: Iconsax.login,
                buttonTextColor: colorScheme.onPrimary,
                buttonColor: colorScheme.onPrimaryFixedVariant,
                action: createAccount,
              ),
              const SizedBox(
                height: 25.0,
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
                buttonText: 'Sign Up with Email',
                buttonColor: colorScheme.onPrimaryContainer,
                buttonTextColor: colorScheme.onTertiary,
                icon: Icons.email,
                action: signUpWithEmail,
              ),
              const SizedBox(
                height: 15.0,
              ),
              ButtonWidget(
                buttonText: 'Sign Up with Facebook',
                buttonColor: colorScheme.onPrimaryContainer,
                buttonTextColor: colorScheme.onTertiary,
                icon: Icons.facebook,
                action: signUpWithFacebook,
              ),
              const SizedBox(
                height: 35.0,
              ),
              Text(
                'By signing up, you agree to our terms and \n conditions and privacy policy.',
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