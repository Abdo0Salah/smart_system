import 'package:flutter/material.dart';

import '../../../models/quiz_model.dart';
import '../../../widget/quiz_item.dart';

class LecturTab extends StatelessWidget {
  const LecturTab({super.key});
  static const String routeName = 'Lecture';

  @override
  Widget build(BuildContext context) {
    QuizModel c = QuizModel(
        quizName: "Quiz 1 selected topic", numOfQuestions: "3 Questions", time: " 1");
    return Expanded(
      child: ListView.builder(
        itemBuilder: (context, index) => QuizItem(quizModel_: c),
        itemCount: 1,
      ),
    );
  }
}
