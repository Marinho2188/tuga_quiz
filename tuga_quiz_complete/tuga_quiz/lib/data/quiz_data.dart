import '../models/question_model.dart';

final List<Question> quizQuestions = [
  Question(
    questionText: 'Qual é a capital de Portugal?',
    options: ['Porto', 'Lisboa', 'Coimbra', 'Faro'],
    correctAnswerIndex: 1,
  ),
  Question(
    questionText: 'Quem foi o primeiro rei de Portugal?',
    options: ['D. Afonso Henriques', 'D. João I', 'D. Manuel I', 'D. Pedro II'],
    correctAnswerIndex: 0,
  ),
  Question(
    questionText: 'Qual destes clubes é de Lisboa?',
    options: ['Sporting', 'Boavista', 'Braga', 'Portimonense'],
    correctAnswerIndex: 0,
  ),
];
