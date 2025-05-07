import 'package:adv_basics/questions_summary/question_identifier.dart';
import 'package:flutter/material.dart';

class SummaryItem extends StatelessWidget {
  const SummaryItem(this.itemData, {super.key});

  final Map<String, Object> itemData;

  @override
  Widget build(context) {
    final isCorrectAnswer =
        itemData['user_answer'] == itemData['correct_answer'];

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        QuestionIdentifier(
          isCorrectAnswer: isCorrectAnswer,
          questionIndex: itemData['question_index'] as int,
        ),
        SizedBox(height: 5),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                textAlign: TextAlign.start,
                style: TextStyle(color: Colors.white),
                itemData['question'] as String,
              ),
              const SizedBox(height: 5),
              Text(
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: const Color.fromARGB(255, 255, 214, 252),
                ),
                itemData['user_answer'] as String,
              ),
              Text(
                textAlign: TextAlign.start,
                style: TextStyle(color: const Color.fromARGB(255, 0, 247, 255)),
                itemData['correct_answer'] as String,
              ),

              SizedBox(height: 5),
            ],
          ),
        ),
      ],
    );
  }
}
