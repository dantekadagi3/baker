import 'package:bakers/main.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';
import 'package:google_fonts/google_fonts.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/second');
    });
    return Scaffold(
      backgroundColor: mainColor,
      body: Stack(
        children: [
          Center(
            child: Text(
              "Angel Bakers",
              style: GoogleFonts.lobster(fontSize: 48, color: Colors.white),
            ),
          ),
          const Positioned(
              bottom: 20,
              left: 0,
              right: 0,
              child: Center(
                  child: CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
              )))
        ],
      ),
    );
  }
}
