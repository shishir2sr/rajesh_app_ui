class Question {
  String? questionText;
  String? answerA;
  String? answerB;
  String? correctAns;

  String? imgUrl;

  Question({
    required this.questionText,
    required this.answerA,
    required this.answerB,
    this.imgUrl,
    this.correctAns,
  });
}

final questionList = [
  Question(
    questionText: 'Dummy Question 1?',
    answerA: 'Dummy answer',
    answerB: 'Dummy answer',
    correctAns: 'A',
    imgUrl:
        'https://www.psdstack.com/wp-content/uploads/2019/08/copyright-free-images-750x420.jpg',
  ),
  Question(
    questionText: 'Dummy Question 2?',
    answerA: 'Dummy answer',
    answerB: 'Dummy answer',
    correctAns: 'A',
    imgUrl: 'https://images.freeimages.com/slider/slider1.jpg',
  ),
  Question(
    questionText: 'Dummy Question 3?',
    answerA: 'Dummy answer',
    answerB: 'Dummy answer',
    correctAns: 'A',
    imgUrl:
        'https://img.freepik.com/free-photo/milford-sound-new-zealand-travel-destination-concept_53876-42945.jpg',
  ),
  Question(
    questionText: 'Dummy Question 4?',
    answerA: 'Dummy answer',
    answerB: 'Dummy answer',
    correctAns: 'A',
    imgUrl:
        'https://cdn.pixabay.com/photo/2017/08/30/01/05/milky-way-2695569__480.jpg',
  ),
];
