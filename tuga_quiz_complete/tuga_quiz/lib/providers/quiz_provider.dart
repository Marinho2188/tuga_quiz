import 'package:flutter/material.dart';
import '../models/question_model.dart';
import '../data/quiz_data.dart';

class QuizProvider with ChangeNotifier {
  int _currentQuestionIndex = 0;
  int _score = 0;
  bool _quizFinished = false;

  List<Question> get questions => quizQuestions;
  int get currentIndex => _currentQuestionIndex;
  int get score => _score;
  bool get isFinished => _quizFinished;

  Question get currentQuestion => questions[_currentQuestionIndex];

  void answerQuestion(int selectedIndex) {
    if (selectedIndex == currentQuestion.correctAnswerIndex) {
      _score++;
    }

    if (_currentQuestionIndex < questions.length - 1) {
      _currentQuestionIndex++;
    } else {
      _quizFinished = true;
    }

    notifyListeners();
  }

  void resetQuiz() {
    _currentQuestionIndex = 0;
    _score = 0;
    _quizFinished = false;
    notifyListeners();
  }
}
