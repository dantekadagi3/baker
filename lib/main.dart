import 'package:bakers/Screens/cart_page.dart';
import 'package:bakers/Screens/infopage1.dart';
import 'package:bakers/Screens/infopage2.dart';
import 'package:bakers/Screens/infopage3.dart';
import 'package:bakers/Screens/landing_page.dart';
import 'package:bakers/Screens/shop.dart';
import 'package:bakers/Screens/splash_screen.dart';
//import 'package:bakers/Screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const 
  ProviderScope(child:  MyApp())
  );
}

const Color mainColor = Color(0xFFFF69B4);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Angel Bakers",
      theme: ThemeData(
          primaryColor: const Color(0xFFFF69B4),
          scaffoldBackgroundColor: Colors.black,
          textTheme: TextTheme(
            bodyLarge: GoogleFonts.poppins(color: Colors.black),
            bodyMedium: GoogleFonts.poppins(color: Colors.black),
            displayLarge: GoogleFonts.poppins(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black), // Headline
          )),
          initialRoute:'/' ,
          routes: {
           '/':(context)=>const SplashScreen(),
           '/second':(context)=>const Infopage1(),
           '/third':(context)=> const Infopage2(),
           '/fourth':(context)=> const Infopage3(),
           '/fifth':(context)=>const LandingPage(),
            '/sixth':(context)=>const Shop(),
             '/seventh':(context)=>CartPage(),


          },
    );
  }
}
