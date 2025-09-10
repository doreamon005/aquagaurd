import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(GroundwaterApp());
}

class GroundwaterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Groundwater Conservation',
      theme: ThemeData(primarySwatch: Colors.blue),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
