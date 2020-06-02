class Question{
  int codQuestions;
  String question;

  Question({this.codQuestions, this.question});

  static List<Question> getQuestions(){
    return<Question>[
      Question(codQuestions: 1, question: "Oriental"),
      Question(codQuestions: 2, question: "Italiana"),
      Question(codQuestions: 3, question: "Mexicana"),
      Question(codQuestions: 4, question: "Amaricana"),
    ];
  }
}

