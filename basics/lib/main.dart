import 'package:flutter/material.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: GradientContainer(),
      ),
    ),
  );
}

class GradientContainer extends StatelessWidget {
  const GradientContainer({super.key});

  @override
  Widget build(context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(15, 255, 255, 255),
            Color.fromARGB(255, 0, 0, 0),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: Text(
          selectionColor: Color.fromARGB(255, 255, 255, 255),
          style: TextStyle(fontSize: 28, color: Colors.white),
          textAlign: TextAlign.center,
          textDirection: TextDirection.ltr,
          'Hello World!',
        ),
      ),
    );
  }
}
