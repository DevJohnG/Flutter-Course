import 'package:flutter/material.dart';
import 'gradient_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.cyanAccent,
        body: GradientContainer(Colors.black, Colors.cyanAccent),
      ),
    ),
  );
}
