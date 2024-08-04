import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class ConfirmationEmailScreen extends StatefulWidget {
  const ConfirmationEmailScreen({super.key});
  @override
  State<ConfirmationEmailScreen> createState() =>
      _ConfirmationEmailScreenState();
}

class _ConfirmationEmailScreenState extends State<ConfirmationEmailScreen> {
  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Confirm Email',
          style: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w600,
            color: colorScheme.primary,
          ),
        ),
        leading: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: SizedBox(
          width: double.infinity,
          height: double.maxFinite,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Icon(
                  Iconsax.chart_success4,
                  size: 100.0,
                  color: colorScheme.primary,
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Center(
                child: Text(
                  'Account Confirmation',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    color: colorScheme.primary,
                  ),
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              Text(
                'Please check your inbox for the confirmation link.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: colorScheme.primary,
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
                    decoration: BoxDecoration(color: colorScheme.primary),
                    child: Center(
                      child: Text(
                        'Resend Confirmation Email',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorScheme.onPrimary,
                          fontSize: 18.0,
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
                      child: Text(
                        'Back to Login',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: colorScheme.primary,
                          fontSize: 18.0,
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
    );
  }
}
