class QuizQuestion {
  const QuizQuestion(this.text, this.answers);

  final String text;
  final List<String> answers;

  List<String> getSuffledAnswers() {
    final shuffled = List.of(answers); // deep copy of exising list
    shuffled.shuffle();
    return shuffled;
  }
}
