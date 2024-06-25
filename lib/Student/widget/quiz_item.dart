import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../models/quiz_model.dart';
import '../screens/home/Quiz-tap/start_quiz.dart';

class QuizItem extends StatelessWidget {
  QuizModel quizModel_;
  QuizItem({required this.quizModel_});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0).w,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0).w,
            child: Image.asset('assets/images/quiz/quiz.png',
              fit: BoxFit.cover,
              height: 112.h,
              width: 112.w,),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0).w,
                child: Text(quizModel_.quizName,style: TextStyle(
                  color: Colors.blue,
                  fontWeight: FontWeight.w500,
                  fontSize: 16.sp,
                ),
                ),
              ),
              Row(
                children: [
                  const Icon(Icons.library_books_sharp,
                      color: Colors.grey),
                  Padding(
                    padding: const EdgeInsets.all(4.0).w,
                    child: Text(quizModel_.numOfQuestions,style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(Icons.query_builder,
                    color: Colors.grey,
                    size: 20,),
                  Padding(
                    padding: const EdgeInsets.all(4.0).w,
                    child: Text(quizModel_.time ,style: TextStyle(
                      color: Color(0xff2E9DEA),
                      fontWeight: FontWeight.w400,
                      fontSize: 14.sp,
                    ),
                    ),
                  ),
                  Text('min',style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.w400,
                    fontSize: 14.sp,
                  ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(8).w,
                child: TextButton(
                  style: OutlinedButton.styleFrom(
                    side: const BorderSide(color: Color(0xff2E9DEA),
                      style: BorderStyle.solid,
                      width: .5,
                    ),
                    fixedSize: Size(200.w, 30.h),
                    backgroundColor: Color(0xff2E9DEA),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(9).r,
                    ),
                  ),
                  onPressed: (){
                    Navigator.of(context).pushNamed(StartQuiz.routeName);
                  },
                  child:
                   Text(
                    "Start Quiz",
                    style: TextStyle(
                      fontSize: 16.sp,
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
