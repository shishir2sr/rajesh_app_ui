import 'package:flutter/material.dart';
import 'package:rajesh_ui/models/questions.dart';

import 'widgets/question_widget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ListView.builder(
            itemCount: questionList.length,
            itemBuilder: (BuildContext context, int index) {
              return QuestionWidget(
                getQuestions: questionList[index],
                questionIndex: index + 1,
              );
            },
          ),
        ),
      ),
    );
  }
}
