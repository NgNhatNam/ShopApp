import 'dart:async';
import 'package:cuoi_ki_flutter/pages/nav_bar_screen.dart';
import 'package:cuoi_ki_flutter/models/models.dart';
import 'package:cuoi_ki_flutter/pages/auth/login_page.dart';
import 'package:cuoi_ki_flutter/pages/onboarding_page.dart';
import 'package:cuoi_ki_flutter/services/local/share_prefs.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  SharedPrefs prefs = SharedPrefs();
  UserModel user = UserModel();

  @override
  void initState() {
    super.initState();
    _check();
  }


  void _check() async {
    SharedPreferences pref = await SharedPreferences.getInstance();
    bool onboardingCompleted = pref.getBool('onboardingCompleted') ?? false;

    user = await prefs.getUser() ?? UserModel();
    String keylogin = user.keylogin ?? '0';

    Timer(const Duration(seconds: 2), () {
      if (onboardingCompleted) {
        if (keylogin == '1') {
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const BottomNavBar()));
        } else {
          Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) => const LoginPage()));
        }
      } else {
        Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (context) => const OnboardingPage()));
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/background.png',
            width: size.width,
            height: size.height,
            fit: BoxFit.fill,
          ),
          Center(
            child: Image.asset(
              'assets/images/logo.png',
              width: 200.0,
            ),
          ), 
        ],
      ),
    );
  }
}
