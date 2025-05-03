import 'package:flutter/material.dart';

const iniAlignment = Alignment.centerLeft;
const finAlignment = Alignment.centerRight;

class QuestionsScreen extends StatefulWidget {
  const QuestionsScreen({super.key});

  @override
  State<QuestionsScreen> createState() {
    return _QuestionsScreenState();
  }
}

class _QuestionsScreenState extends State<QuestionsScreen> {
  @override
  Widget build(context) {
    return const Text('QuestionsScreen');
  }
}
