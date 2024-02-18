import 'package:flutter/material.dart';
import 'package:smart_system/models/quiz_model.dart';

import '../models/group_model.dart';

class QuizItem extends StatelessWidget {
  QuizModel quizModel_;
  QuizItem({required this.quizModel_});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/quiz/quiz.png',
              fit: BoxFit.cover,
              height: 112,
              width: 112,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: Text(quizModel_.quizName,style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 16,
                ),
                ),
              ),
              Row(
                children: [
                  Icon(Icons.library_books_sharp,
                      color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(quizModel_.numOfQuestions,style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  Icon(Icons.query_builder,
                    color: Colors.grey,
                    size: 20,),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(quizModel_.time ,style: TextStyle(
                      color: Color(0xff2E9DEA),
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                    ),
                    ),
                  ),
                  Text('min',style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                  ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: TextButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xff2E9DEA),
                      style: BorderStyle.solid,
                      width: .5,
                    ),
                    fixedSize: Size(200, 30),
                    backgroundColor: Color(0xff2E9DEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9),
                    ),
                  ),
                  onPressed: (){
                    // Navigator.of(context).pushNamed(ResetPasswordScreen.routeName);
                  },
                  child:
                  const Text(
                    "Start Quiz",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
