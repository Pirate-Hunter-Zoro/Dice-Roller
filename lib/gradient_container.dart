import 'package:dice_roller/dice_roller.dart';
import 'package:flutter/material.dart';

// You're telling Dart that the value stored in here is a compile-time constant
// const startAlignment = getAlignment() IS INVALID BECAUSE YOU DON'T KNOW WHAT THAT FUNCTION WILL RETURN DURING COMPILE TIME
const startAlignment = Alignment.topLeft;
const endAlignment = Alignment.bottomRight;

class GradientContainer extends StatelessWidget {
  final Color startColor;
  final Color endColor;

  // We should accept a key argument, and call our parent constructor with said key
  // You can store an instance of this widget type in a memory location to be reused
  const GradientContainer(this.startColor, this.endColor, {super.key});

  // We can make a different constructor
  const GradientContainer.purple({super.key})
      : startColor = Colors.deepPurple,
        endColor = Colors.indigo;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: startAlignment,
          end: endAlignment,
          colors: [startColor, endColor],
        ),
      ),
      // Existing memory will be reused when you use const - address preserved
      child: const Center(
        child: DiceRoller(),
      ),
    );
  }
}
