import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  // We should accept a key argument, and call our parent constructor with said key
  // You can store an instance of this widget type in a memory location to be reused
  const GradientContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color.fromARGB(255, 187, 6, 124),
            Color.fromARGB(255, 101, 21, 238),
          ],
        ),
      ),
      // Existing memory will be reused when you use const - address preserved
      child: const Center(
        child: Text(
          'Hello World!',
          style: TextStyle(
            fontSize: 28.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
