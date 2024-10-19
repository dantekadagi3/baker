import 'package:flutter/material.dart';

class MyButtons extends StatelessWidget {
  final VoidCallback move;
  final String text;

  const MyButtons({
    super.key,
    required this.move,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: move,
      style: TextButton.styleFrom(
        overlayColor:  Colors.white, 
        textStyle: const TextStyle(
          fontSize: 18,
        ),
        
        backgroundColor:  Colors.white, 
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
      ).copyWith(
        // Changing text color on hover
        foregroundColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.blue; // Text color when hovered
            }
            if (states.contains(WidgetState.pressed)) {
              return Colors.pink; 
            }
            return Colors.white; 
          },
        ),
        // Background color when hovered
        backgroundColor: WidgetStateProperty.resolveWith<Color?>(
          (Set<WidgetState> states) {
            if (states.contains(WidgetState.hovered)) {
              return Colors.pink.withOpacity(0.2); 
            }
            if (states.contains(WidgetState.pressed)) {
              return Colors.pink.withOpacity(0.5); 
            }
            return null; 
          },
        ),
      ),
      child: Text(text),
    );
  }
}
