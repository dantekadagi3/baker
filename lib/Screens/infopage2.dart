import 'package:bakers/Widgets/landing_buttons.dart';
import 'package:flutter/material.dart';
//import 'package:flutter/semantics.dart';

class Infopage2 extends StatelessWidget {
  const Infopage2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
        children: [
       Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/cake2.jpeg"),
            fit: BoxFit.cover)
        ),
       ),
       //overlay container
       Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Colors.black.withOpacity(0.8),
          
        ),
       ),

       const Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Welcome to Angel bakers...",
            style: TextStyle(
              color: Colors.white
            ),),
            SizedBox(
              height: 10,
            ),
            Text("Where all good taste live in every bite of our tasty treats",
            style: TextStyle(color: Colors.white),)
          ],
        )
       ),
      Positioned(
             bottom: 20, 
          left: 10,
          right: 10,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MyButtons(move: () {
              Navigator.of(context)
              .pushReplacementNamed('/fifth');
              }, text: "Skip"),
               MyButtons(move: () {
              Navigator.of(context)
                                .pushReplacementNamed('/fourth');
               }, text: "Next")
            ],
          
          ),
        ))
      
      ],
      ),
      ),
    );
  }
}