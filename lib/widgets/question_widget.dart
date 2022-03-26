import 'package:flutter/material.dart';

import '../models/questions.dart';

class QuestionWidget extends StatelessWidget {
  Question getQuestions;
  String? giventAns;

  QuestionWidget({Key? key, required this.getQuestions, this.giventAns})
      : super(key: key);

  // ignore: empty_constructor_bodies
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      width: 250,
      height: 300,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(),
          Text(
            '1. ${getQuestions.questionText.toString()}',
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                child: Image.network(
                  getQuestions.imgUrl.toString(),
                  fit: BoxFit.fill,
                  height: 50,
                  width: 70,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              SizedBox(width: 10),
              ClipRRect(
                child: Image.network(
                  getQuestions.imgUrl.toString(),
                  fit: BoxFit.fill,
                  height: 50,
                  width: 70,
                ),
                borderRadius: BorderRadius.circular(8),
              ),
            ],
          ),
          Spacer(),
          Text('\t\t\tA. ${getQuestions.answerA.toString()}'),
          Spacer(),
          Text(
            '\t\t\tB. ${getQuestions.answerB.toString()}',
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Correct Ans.: ${getQuestions.correctAns.toString()}'),
              Text(
                  'Given: A'), //TODO: make a function pass to the model and get the given answers value
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('Marks: '), //TODO: calculate your own
              Text('10/10'),
            ],
          ),
          Spacer(),
        ],
      ),
    );
  }
}
