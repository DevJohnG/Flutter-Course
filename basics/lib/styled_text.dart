import "package:flutter/material.dart";

class StyledText extends StatelessWidget {
  const StyledText(this.txt, {super.key});

  final String txt;

  @override
  Widget build(context) {
    return Text(
      txt,
      selectionColor: Color.fromARGB(255, 255, 255, 255),
      style: TextStyle(
        fontSize: 28,
        color: Colors.white,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
      textDirection: TextDirection.ltr,
    );
  }
}
