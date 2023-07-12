import 'dart:async';
import 'package:flutter/material.dart';
import 'package:multirolebase_app/home_screen.dart';
import 'package:multirolebase_app/login_screen.dart';
import 'package:multirolebase_app/student_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isLogin();
  }

  void isLogin() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    bool isLogin = sp.getBool('isLogin') ?? false;
    String userType = sp.getString('userType') ?? '';

    Timer(Duration(seconds: 2), () {
      if (isLogin) {
        if (userType == 'student') {
          Navigator.push(context,
              MaterialPageRoute(builder: (context) => StudentScreen()));
        } else {
          Navigator.push(
              context, MaterialPageRoute(builder: (context) => HomeScreen()));
        }
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => HomeScreen()));
      } else {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Login()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image(
          height: double.infinity,
          fit: BoxFit.fitHeight,
          image: NetworkImage('https://wallpaperaccess.com/full/4609573.jpg')),
    );
  }
}
