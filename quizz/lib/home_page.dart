import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:restart_app/restart_app.dart';

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
    "¿La caja negra de un avión es negra?",
    "¿La algiumfobia es el miedo al ajo?",
    "¿El signo zodiacal Acuario está representado por un tigre?",
    "Felicidades, ha llegado al final de juego, presione reiniciar o salir"
  ];
  List<bool> respuestas = [true, false, true, false, true, false, false];

  /*Area experimental de mis botoncitos*/
  List<String> botones = ['Verdadero', 'Falso', 'Reiniciar', 'Salir'];
  //
  int textoBoton = 0;
  int limitePregunta = 5;
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
                        //index de preguntas y respuestas
                        if (numeroPregunta <= limitePregunta) {
                          bool respuestaCorrecta = respuestas[numeroPregunta];
                          //comprobacion de correcta o incorrecta
                          if (respuestaCorrecta == true) {
                            puntuacionBien();
                          } else {
                            puntuacionMal();
                          }
                        }
                        //Pasador de pregunta
                        if (numeroPregunta > limitePregunta) {
                          if (textoBoton != 2) {
                            textoBoton = textoBoton + 2;
                          } else {
                            //Aqui va lo que hace el reinicio
                            Restart.restartApp();
                          }
                        }
                      });
                    },
                    child: Text(
                      botones[textoBoton], //Le cambio el nombrecillo
                      style: const TextStyle(
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
                      setState(() {
                        if (numeroPregunta <= limitePregunta) {
                          //Index de preguntas y respuestas
                          bool respuestaCorrecta = respuestas[numeroPregunta];
                          //Comprobacion de correcto o incorrecto
                          if (respuestaCorrecta == false) {
                            puntuacionBien();
                          } else {
                            puntuacionMal();
                          }
                        }
                        //Pasador de pregunta
                        if (numeroPregunta > limitePregunta) {
                          if (textoBoton != 2) {
                            textoBoton = textoBoton + 2;
                          } else {
                            //boton de salida
                            SystemNavigator.pop();
                          }
                        }
                      });
                    },
                    child: Text(
                      botones[textoBoton + 1],
                      style: const TextStyle(
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

  void puntuacionMal() {
    puntuacion.add(
      const Icon(
        Icons.close,
        color: Colors.redAccent,
      ),
    );
    numeroPregunta++;
  }

  void puntuacionBien() {
    puntuacion.add(
      const Icon(
        Icons.check,
        color: Colors.greenAccent,
      ),
    );
    numeroPregunta++;
  }
}
