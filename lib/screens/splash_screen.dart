import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFF36E21), Color(0xFFF44336)],
            begin: Alignment.topRight,
            end: Alignment.bottomLeft),
        ),
        child: Column(children: [
          Icon(Icons.edit, size:80, color:Color(0xFFF44336))
        ],),
      ),
    );
  }
}


// import 'package:flutter/material.dart';

// const Color primaryColor = Color(0xFF5722);
// const Color secondaryColor = Color(0xFFCCBC);
// const Color accentColor = Color(0x2e302f);
// const Color errorColor = Color(0xfe2a39);

// class SplashScreen extends StatefulWidget {
//   const SplashScreen({super.key});

//   @override
//   State<SplashScreen> createState() => _SplashScreenState();
// }

// class _SplashScreenState extends State<SplashScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: primaryColor,
//       body: Container(
//         decoration: BoxDecoration(
//           color: primaryColor,
//         ),
//       ),
//     );
//   }
// }
