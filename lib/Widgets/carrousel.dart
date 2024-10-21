import 'package:bakers/main.dart';
import 'package:bakers/models/slider.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Carrousel extends StatelessWidget {
  const Carrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: CarouselSlider.builder(
        itemCount: slides.length,
        options: CarouselOptions(
          height: 300,
          autoPlay: true,
          viewportFraction: 0.5,
          autoPlayCurve: Curves.fastOutSlowIn,
          autoPlayAnimationDuration: const Duration(seconds: 1),
          enlargeCenterPage: true,
          pageSnapping: true,
        ),
        itemBuilder: (context, itemIndex, pageViewIndex) {
          final slide = slides[itemIndex];
          return ClipRRect(
            borderRadius: BorderRadius.circular(10.0),
            child: Stack(
              fit: StackFit.expand,
              children: [
                // Display the image from assets
                Image.asset(
                  slide.images,
                  fit: BoxFit.cover,
                ),
                // Positioned text at the bottom left
                Positioned(
                  bottom: 10,
                  left: 10,
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 5),
                    color: Colors.black54, // Semi-transparent background
                    child: Text(
                      slide.name ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

