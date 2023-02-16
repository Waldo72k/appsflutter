import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.indigo,
      body: QuizPage(),
    );
  }
}

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  List<Icon> puntuacion = [];
  List<String> preguntas = [
    "¿Los globulos rojos viven cuatro meses?",
    "¿El cuerpo humano adulto tiene 306 huesos?",
    "¿La cobalamina es una vitamina?",
  ];

  int numeroPregunta = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Center(
                child: Text(
                  preguntas[numeroPregunta],
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 70,
                width: 100,
                child: TextButton(
                    onPressed: () {
                      setState(() {
                        numeroPregunta = numeroPregunta + 1;
                        puntuacion.add(
                          const Icon(
                            Icons.check,
                            color: Colors.greenAccent,
                          ),
                        );
                      });
                    },
                    child: const Text(
                      "Verdadero",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(30),
                ),
                height: 70,
                width: 100,
                child: TextButton(
                    onPressed: () {
                      numeroPregunta = numeroPregunta + 1;
                      setState(() {
                        puntuacion.add(
                          const Icon(
                            Icons.close,
                            color: Colors.redAccent,
                          ),
                        );
                      });
                    },
                    child: const Text(
                      "Falso",
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    )),
              ),
            ),
          ),
          Row(
            children: puntuacion,
          )
        ],
      ),
    );
  }
}
