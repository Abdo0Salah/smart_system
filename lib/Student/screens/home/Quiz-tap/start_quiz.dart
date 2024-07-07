import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smart_system/Student/screens/home/Quiz-tap/quiz_screen.dart';




class StartQuiz extends StatefulWidget {
  static const String routeName = 'StartQuiz';
  @override
  _StartQuizState createState() => _StartQuizState();
}

class _StartQuizState extends State<StartQuiz> {
  int _currentQuestion = 0;
  Timer? _timer;
  int _remainingTime = 20 * 60; // 20 minutes in seconds

  final List<String> _questions = [
    'What is the meaning of UI UX Design?',
    'Second question here?',
    'Third question here?',
    // Add more questions here
  ];

  final List<List<String>> _options = [
    [
      'User Interface and User Experience',
      'User Introface and User Experience',
      'User Interface and Using Experience',
      'User Interface and User Experience',
      'Using Interface and Using Experience',
    ],
    [
      'Option 1 for question 2',
      'Option 2 for question 2',
      'Option 3 for question 2',
      'Option 4 for question 2',
      'Option 5 for question 2',
    ],
    [
      'Option 1 for question 3',
      'Option 2 for question 3',
      'Option 3 for question 3',
      'Option 4 for question 3',
      'Option 5 for question 3',
    ],
    // Add more options for other questions here
  ];

  final List<int?> _selectedOptions = [null, null, null, null, null];
  @override
  void initState() {
    super.initState();
    _startTimer();
  }

  @override
  void dispose() {
    _timer?.cancel();
    super.dispose();
  }
  void _startTimer() {
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if (_remainingTime > 0) {
        setState(() {
          _remainingTime--;
        });
      } else {
        _timer?.cancel();
        _submitQuiz();
      }
    });
  }
  void _submitQuiz() {
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text("Time is up! Quiz submitted successfully."),
      ),
    );

      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => QuizScreen()),
      );

  }

  String _formatTime(int timeInSeconds) {
    int minutes = timeInSeconds ~/ 60;
    int seconds = timeInSeconds % 60;
    return '${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}';
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Quiz',
          style: GoogleFonts.poppins(fontSize: 18.sp, color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 16.w),
            child: Row(
              children: [
                Icon(Icons.access_time, size: 20.sp),
                SizedBox(width: 5.w),
                Text(
                  _formatTime(_remainingTime),
                  style: GoogleFonts.poppins(fontSize: 14.sp, color: Colors.black),
                ),
              ],
            ),
          ),
        ],
        actionsIconTheme:const IconThemeData(color:Colors.black),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.w),
        child: Column(
          children: [
            _buildProgressIndicator(),
            SizedBox(height: 20.h),
            Text(
              _questions[_currentQuestion],
              style: GoogleFonts.poppins(fontSize: 16.sp),
            ),
            SizedBox(height: 20.h),
            _buildOptions(),
            Spacer(),
            _buildNavigationButtons(context),
          ],
        ),
      ),
    );
  }

  Widget _buildProgressIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: List.generate(
        _questions.length,
            (index) => CircleAvatar(
          radius: 12.r,
          backgroundColor: index == _currentQuestion ? Colors.blue : Colors.grey[300],
          child: Text(
            '${index + 1}',
            style: GoogleFonts.poppins(
              color: index == _currentQuestion ? Colors.white : Colors.black,
              fontSize: 12.sp,
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildOptions() {
    return Column(
      children: List.generate(_options[_currentQuestion].length, (index) {
        return RadioListTile<int>(
          title: Text(
            _options[_currentQuestion][index],
            style: GoogleFonts.poppins(fontSize: 14.sp),
          ),
          value: index,
          groupValue: _selectedOptions[_currentQuestion],
          onChanged: (value) {
            setState(() {
              _selectedOptions[_currentQuestion] = value;
            });
          },
        );
      }),
    );
  }

  Widget _buildNavigationButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        if (_currentQuestion > 0)
          ElevatedButton(
            onPressed: () {
              setState(() {
                _currentQuestion--;
              });
            },
            child: Icon(Icons.arrow_back),
          ),
        ElevatedButton(
          onPressed: () {
            if (_selectedOptions[_currentQuestion] == null) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Please select an option before proceeding"),
                ),
              );
              return;
            }

            if (_currentQuestion < _questions.length - 1) {
              setState(() {
                _currentQuestion++;
              });
            } else {
              // Show SnackBar and navigate to another screen
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("Quiz submitted successfully"),
                ),
              );

              // Delaying the navigation to allow SnackBar to be visible for a moment

                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => QuizScreen()),
                );
            }
          },
          child: Text(_currentQuestion < _questions.length - 1 ? 'Next' : 'Submit Quiz'),
        ),
      ],
    );
  }
}


// class SubmitScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.pop(
//               context,
//               QuizScreen.routeName,
//             );
//           },
//         ),
//         title: Text('Quiz Submitted'),
//       ),
//       body: Center(
//         child: Text(
//           'Thank you for submitting the quiz!',
//           style: GoogleFonts.poppins(fontSize: 18.sp),
//         ),
//       ),
//     );
//   }
// }
