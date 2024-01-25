import 'package:flutter/material.dart';
import 'mapscreen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToMap();
  }

  navigateToMap() async {
    await Future.delayed(Duration(milliseconds: 3500));
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
            builder: (context) => MapScreen(-33.9685533, 18.5662383)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF36E21), Color(0xFFF44336)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset('Images/Quicloc8-logo.png'),
              height: 80,
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
