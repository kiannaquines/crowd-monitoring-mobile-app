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
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Geist',
      ),
      home: const LoginScreen(),
    );
  }
}
