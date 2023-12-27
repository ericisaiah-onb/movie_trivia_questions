import 'package:flutter/material.dart';
import 'package:movie_trivia_questions/game_over.dart';
import 'package:movie_trivia_questions/question.dart';

class QuizScreen extends StatefulWidget {
  @override
  _QuizScreenState createState() => _QuizScreenState();
}

class _QuizScreenState extends State<QuizScreen> {
  int score = 0;
  int currentQuestionIndex = 0;

  List<Question> questions = [
    Question(
      question:
          'In which film did Leonardo DiCaprio win his first Academy Award for Best Actor?"?',
      options: [
        'Inception',
        'The Revenant',
        'Titanic',
        'The Wolf of Wall Street'
      ],
      correctAnswerIndex: 1,
    ),
    Question(
      question: 'Who directed the 1994 classic film "Pulp Fiction"?',
      options: [
        'Christopher Nolan',
        'Frank Darabont',
        'Steven Spielberg',
        'Quentin Tarantino'
      ],
      correctAnswerIndex: 3,
    ),
    Question(
      question: 'Which animated movie features a character named Simba?',
      options: ['Shrek', 'The Lion King', 'Finding Nemo', 'Madagascar'],
      correctAnswerIndex: 1,
    ),
    Question(
      question:
          'In the movie "The Shawshank Redemption," what is the name of the main character?',
      options: [
        'Andy Dufresne',
        'Red',
        'Morgan Freeman',
        'Ellis Boyd "Red" Redding'
      ],
      correctAnswerIndex: 0,
    ),
    Question(
      question:
          'Who played the role of Hermione Granger in the Harry Potter film series?',
      options: ['Emma Stone', 'Emma Thompson', 'Emma Roberts', 'Emma Watson'],
      correctAnswerIndex: 3,
    ),
    Question(
      question:
          'In the movie "Forrest Gump," what does Forrest\'s mother say life is like?',
      options: [
        'A rollercoaster',
        'A puzzle',
        'A box of chocolates',
        'A journey'
      ],
      correctAnswerIndex: 2,
    ),
    Question(
      question: 'Which film won the Academy Award for Best Picture in 2019?',
      options: ['La La Land', '1917', 'Green Book', 'The Shape of Water'],
      correctAnswerIndex: 1,
    ),
    Question(
      question: 'Who played the character Jack Dawson in the movie "Titanic"?',
      options: ['Matt Damon', 'Leonardo DiCaprio', 'Brad Pitt', 'Johnny Depp'],
      correctAnswerIndex: 1,
    ),
    Question(
      question:
          'Which actor portrayed the iconic character James Bond in the film "Skyfall"?',
      options: ['Pierce Brosnan', 'David Craig', 'Daniel Craig', 'David Moore'],
      correctAnswerIndex: 2,
    ),
    Question(
      question:
          'What is the name of the fictional African country featured in the movie "Black Panther"?',
      options: ['Wakanda', 'Zamunda', 'Genovia', 'Elbonia'],
      correctAnswerIndex: 0,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    Question currentQuestion = questions[currentQuestionIndex];

    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Question ${currentQuestionIndex + 1} out of ${questions.length}',
                style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(199, 78, 78, 71)),
              ),
              Text(
                currentQuestion.question,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30),
              Column(
                children: currentQuestion.options.map((option) {
                  return SizedBox(
                    width: 250,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.red,
                        foregroundColor: Colors.white70,
                      ),
                      onPressed: () {
                        setState(() {
                          if (currentQuestion.options.indexOf(option) ==
                              currentQuestion.correctAnswerIndex) {
                            score++;
                          }

                          if (currentQuestionIndex < questions.length) {
                            currentQuestionIndex++;
                          }

                          if (questions.length == currentQuestionIndex) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => GameOver(score)),
                            );
                          }
                        });
                      },
                      child: Text(option),
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
