import 'package:flutter/material.dart';

class QuestionIdentifier extends StatelessWidget {
  const QuestionIdentifier(this._questionIndex, this._isCorrectAnswer,
      {super.key});
  final int _questionIndex;
  final bool _isCorrectAnswer;

  @override
  Widget build(BuildContext context) {
    final questionNumber = _questionIndex + 1;
    return Container(
      width: 30,
      height: 30,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: _isCorrectAnswer
            ? const Color.fromARGB(255, 105, 198, 241)
            : const Color.fromARGB(255, 249, 133, 241),
        borderRadius: BorderRadius.circular(100),
      ),
      child: Text(
        questionNumber.toString(),
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          color: Color.fromARGB(255, 22, 2, 56),
        ),
      ),
    );
  }
}
