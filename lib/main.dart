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
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        colorScheme: const ColorScheme(
          brightness: Brightness.light,
          primary: AppColors.primary,
          onPrimary: AppColors.onPrimary,
          secondary: AppColors.secondary,
          onSecondary: AppColors.onSecondary,
          error: AppColors.error,
          onError: AppColors.white,
          surface: AppColors.surface,
          onSurface: AppColors.onSurface,
        ),
        scaffoldBackgroundColor: AppColors.lightGrey,
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
              return const TextStyle(color: AppColors.mediumGrey);
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
