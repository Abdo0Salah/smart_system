import 'package:flutter/material.dart';
import 'package:smart_system/models/quiz_model.dart';
import 'package:smart_system/widget/quiz_item.dart';

class SectionTap extends StatelessWidget {
  const SectionTap({super.key});
  static const String routeName = 'Section';

  @override
  Widget build(BuildContext context) {
    QuizModel c = QuizModel(
        quizName: "Quiz name", numOfQuestions: "10 Questions", time: " 30");
    return Expanded(
        child: ListView.builder(
          itemBuilder: (context, index) => QuizItem(quizModel_: c),
          itemCount: 3,
        ));
  }
}
