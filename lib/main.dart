import 'package:flutter/material.dart';
// import 'package:multirolebase_app/home_screen.dart';
// import 'package:multirolebase_app/login_screen.dart';
import 'package:multirolebase_app/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
