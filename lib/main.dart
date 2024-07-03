import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const CrowdMonitoring());
}

class CrowdMonitoring extends StatelessWidget {
  const CrowdMonitoring({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'CrowdPulse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
        fontFamily: 'Geist',
      ),
      home: const MainScreen(title: 'Dashboard Screen'),
    );
  }
}
