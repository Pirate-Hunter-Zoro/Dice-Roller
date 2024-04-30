import 'dart:math';

import 'package:flutter/material.dart';

// We're only going to need one random object
final Random numberGenerator = Random();

class DiceRoller extends StatefulWidget {
  // We've still got our key - THIS part is const
  const DiceRoller({super.key});

  @override
  State<StatefulWidget> createState() {
    // Execute the constructor function for _DiceRollerState(), which comes by default
    return _DiceRollerState();
  }
}

// Convention for defining the widget's state (a private class)
// THIS PART IS NOT CONST
class _DiceRollerState extends State<DiceRoller> {
  // Since _DiceRollerState is not const, we can have the following:
  var currentImageIdx = 0;

  static final List<String> diceImages = [
    'dice-1.png',
    'dice-2.png',
    'dice-3.png',
    'dice-4.png',
    'dice-5.png',
    'dice-6.png'
  ];

  // Whenever the button is clicked
  void rollDice() {
    setState(() {
      // This method is available in a Stateful Widget - typically we pass in an anonymous function
      currentImageIdx = numberGenerator.nextInt(diceImages.length);
    });
    // Throwing this into setState tells Flutter that we expect a change, so Flutter will re-execute build()!
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      // By default takes ALL available vertical space
      mainAxisSize: MainAxisSize.min, // default is max
      // Multiple children above each other
      children: [
        Image.asset('assets/images/${diceImages[currentImageIdx]}', width: 200),
        const SizedBox(
          height: 20,
        ), // one option for padding
        TextButton(
          onPressed: rollDice, // anonymous function
          style: TextButton.styleFrom(
            foregroundColor: Colors.white, // this is the text color
            backgroundColor: Colors.amber,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text('Roll Dice'),
        )
      ],
    );
  }
}
