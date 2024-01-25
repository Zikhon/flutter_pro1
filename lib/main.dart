import 'package:flutter/material.dart';
import 'package:flutter_pro1/screens/splash_screen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
    const MyApp({super.key}) ;
  
    @override
    Widget build(BuildContext context) {
      return const MaterialApp(
        debugShowCheckedModeBanner: false,
  
        home: SplashScreen(),
    
      );
    }
  }

 

  
  