import 'package:flutter/material.dart';
import 'screens/main_screen.dart';
import 'package:flutter/services.dart';

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
      title: 'CrowdPulse',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
        fontFamily: 'Geist',
      ),
      home: const MainScreen(title: 'Dashboard Screen'),
    );
  }
}
