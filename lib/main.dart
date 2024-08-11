import 'package:crowd/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:crowd/screens/login_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
    [
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ],
  );
  runApp(const CrowdMonitoring());
}

class CrowdMonitoring extends StatelessWidget {
  const CrowdMonitoring({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TaraLibrary',
      debugShowCheckedModeBanner: false,
      color: AppColors.primary,
      theme: ThemeData(
        scaffoldBackgroundColor: AppColors.grey,
        useMaterial3: true,
        fontFamily: 'Geist',
        primaryColor: AppColors.primary,
        navigationBarTheme: NavigationBarThemeData(
          backgroundColor: AppColors.primary,
          indicatorColor: AppColors.white,
          labelTextStyle: WidgetStateProperty.resolveWith<TextStyle>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return const TextStyle(color: AppColors.white);
              }
              return const TextStyle(color: AppColors.grey);
            },
          ),
          iconTheme: WidgetStateProperty.resolveWith<IconThemeData>(
            (Set<WidgetState> states) {
              if (states.contains(WidgetState.selected)) {
                return const IconThemeData(color: AppColors.primary);
              }
              return const IconThemeData(color: AppColors.white);
            },
          ),
        ),
      ),
      home: const LoginScreen(),
    );
  }
}
