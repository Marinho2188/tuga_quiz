import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/quiz_provider.dart';
import 'result_screen.dart';

class QuizScreen extends StatelessWidget {
  const QuizScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final quiz = Provider.of<QuizProvider>(context);
    final question = quiz.currentQuestion;

    return Scaffold(
      appBar: AppBar(title: const Text('Tuga Quiz')),
      body: quiz.isFinished
          ? const ResultScreen()
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    question.questionText,
                    style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20),
                  ...List.generate(
                    question.options.length,
                    (index) => ElevatedButton(
                      onPressed: () {
                        quiz.answerQuestion(index);
                      },
                      child: Text(question.options[index]),
                    ),
                  ),
                ],
              ),
            ),
    );
  }
}
