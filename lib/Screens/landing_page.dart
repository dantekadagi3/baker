import 'package:bakers/Widgets/bottom_bar.dart';
import 'package:bakers/Widgets/pager.dart';
import 'package:bakers/main.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
//import 'package:flutter/semantics.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({super.key});

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        title: Text("Angel bakers",
            style: GoogleFonts.lobster(
              fontSize: 30,
              color: mainColor
            ),
          

      
      ),
    ),
    body: Column(
      children: [
        Pager(),
        Expanded(
          child: Container()
          ),

       const BottomBar()
      ],
    ),
    );
  }
}
