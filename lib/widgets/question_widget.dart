// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../models/questions.dart';

class QuestionWidget extends StatelessWidget {
  Question getQuestions;
  String? giventAns;
  int? questionIndex;

  QuestionWidget({
    Key? key,
    required this.getQuestions,
    this.giventAns,
    required this.questionIndex,
  }) : super(key: key);

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
          const Spacer(),
          Text(
            '$questionIndex. ${getQuestions.questionText.toString()}',
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
              const SizedBox(width: 10),
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
          const Spacer(),
          Text('\t\t\tA. ${getQuestions.answerA.toString()}'),
          const Spacer(),
          Text(
            '\t\t\tB. ${getQuestions.answerB.toString()}',
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text('Correct Ans.: ${getQuestions.correctAns.toString()}'),
              const Text(
                  'Given: A'), //TODO: make a function pass to the model and get the given answers value
            ],
          ),
          const Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Text('Marks: '), //TODO: calculate your own
              Text('10/10'),
            ],
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

ListView listViewBuilder() {
  return ListView.builder(
    itemCount: questionList.length,
    itemBuilder: (BuildContext context, int index) {
      return QuestionWidget(
        getQuestions: questionList[index],
        questionIndex: index + 1,
      );
    },
  );
}
