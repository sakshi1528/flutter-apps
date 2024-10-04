import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: QuizApp(),
    );
  }
}

class QuizApp extends StatefulWidget {
  const QuizApp({super.key});

  @override
  State createState() => _QuizAppState();
}

class _QuizAppState extends State<QuizApp> {
  List<Map> allQuestions = [
    {
      "question": "Who is the founder of Microsoft?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 1
    },
    {
      "question": "Who is the founder of Google?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 2
    },
    {
      "question": "Who is the founder of SpaceX?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 3
    },
    {
      "question": "Who is the founder of Apple?",
      "options": ["Steve Jobs", "Bill Gates", "Larry Page", "Elon Musk"],
      "correctAnswer": 0
    },
    {
      "question": "Who is the founder of Meta?",
      "options": ["Steve Jobs", "Mark Zuckerberg", "Larry Page", "Elon Musk"],
      "correctAnswer": 1
    },
  ];

  bool questionScreen = true;
  int currentQuestionIndex = 0;
  int selectedAnswerIndex = -1;
  int noOfCorrectAnswers = 0;

  Color? checkAnswer(int buttonIndex) {
    if (selectedAnswerIndex != -1) {
      if (buttonIndex == allQuestions[currentQuestionIndex]["correctAnswer"]) {
        return Colors.green;
      } else if (buttonIndex == selectedAnswerIndex) {
        return  Colors.red;
      }
    }
    return null;
  }

  void validateCurrentPage() {
    if (selectedAnswerIndex == -1) {
      return;
    }

    if (selectedAnswerIndex ==
        allQuestions[currentQuestionIndex]["correctAnswer"]) {
      noOfCorrectAnswers++;
    }

    if (currentQuestionIndex < allQuestions.length - 1) {
      currentQuestionIndex++;
      selectedAnswerIndex = -1;
    } else {
      setState(() {
        questionScreen = false;
      });
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.black,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.purple,
      ),
      body: questionScreen ? buildQuestionScreen() : buildResultScreen(),
      floatingActionButton: questionScreen
          ? FloatingActionButton(
              onPressed: validateCurrentPage,
              backgroundColor: Colors.purple,
              child: const Icon(
                Icons.arrow_forward,
                color: Colors.black,
              ),
            )
          : null,
    );
  }

  Widget buildQuestionScreen() {
    return Column(
      children: [
        const SizedBox(height: 30),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Question: ${currentQuestionIndex + 1}/${allQuestions.length}",
              style: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        SizedBox(
          width: 400,
          child: Text(
            allQuestions[currentQuestionIndex]["question"],
            style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
              color: Colors.purple,
            ),
          ),
        ),
        const SizedBox(height: 50),
        for (int i = 0; i < 4; i++) ...[
          SizedBox(
            height: 50,
            width: 350,
            child: ElevatedButton(
              onPressed: () {
                setState(() {
                  selectedAnswerIndex = i;
                });
              },
              child: Text(
                allQuestions[currentQuestionIndex]["options"][i],
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w500,
                ),
              ),
              style: ButtonStyle(
                backgroundColor: MaterialStateProperty.all(
                    checkAnswer(i) ?? Colors.white),
              ),
            ),
          ),
          const SizedBox(height: 25),
        ],
      ],
    );
  }

  Widget buildResultScreen() {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Result",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.w800,
            ),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                "data:image/jpeg;base64,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",
                height: 300,
                width: 300,
              ),
              const SizedBox(height: 20),
              const Text(
                "Congratulations!!!",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                "You have successfully completed the Quiz",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 15),
              Text("$noOfCorrectAnswers / ${allQuestions.length}"),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    currentQuestionIndex = 0;
                    questionScreen = true;
                    noOfCorrectAnswers = 0;
                    selectedAnswerIndex = -1;
                  });
                },
                child: const Text(
                  "Reset",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.normal,
                    color: Colors.purple,
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}