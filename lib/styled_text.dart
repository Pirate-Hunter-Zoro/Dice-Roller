import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  // Since this is final, our entire widget is known at compile time - so it can be denoted 'const'
  final String text;

  // Shortcut to initialize the text attribute 'this.text'
  const StyledText(this.text, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28.0,
        color: Colors.white,
      ),
    );
  }
}
