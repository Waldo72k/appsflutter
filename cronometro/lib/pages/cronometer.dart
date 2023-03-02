import 'dart:async';

import 'package:flutter/material.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({super.key});

  @override
  State<Cronometro> createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  int milisegundos = 0;
  bool estaCorriendo = false;
  late Timer timer;

  void iniciarCronometro() {
    if (!estaCorriendo) {
      timer = Timer.periodic(
          const Duration(
            milliseconds: 100, //10
          ), (timer) {
        this.milisegundos += 100; //10
        setState(() {});
      });
      estaCorriendo = true;
    }
  }

  void detenerCronometro() {
    if (estaCorriendo == true) {
      timer.cancel();
      estaCorriendo = false;
    }
  }

  //este almacena la string mostrada en pantalla, dando el efecto de cronometro
  String formatoTiempo() {
    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    Duration duracion = Duration(milliseconds: this.milisegundos);
    String horas = dosValores(duracion.inHours);
    String minutos = dosValores(duracion.inMinutes.remainder(60));
    String segundos = dosValores(duracion.inSeconds.remainder(60));
    String milisegundos = dosValores(duracion.inMilliseconds.remainder(1000));

    String miliReales = milisegundos.substring(0, 2);
    return '$horas:$minutos:$segundos:$miliReales';
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          formatoTiempo(),
          style: const TextStyle(fontSize: 60, color: Colors.white),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: iniciarCronometro,
                child: const Icon(
                  Icons.not_started_outlined,
                  size: 60,
                  color: Colors.green,
                )),
            TextButton(
                onPressed: detenerCronometro,
                child: const Icon(
                  Icons.stop_circle_outlined,
                  size: 60,
                  color: Colors.red,
                )),
          ],
        ),
        TextButton(
            onPressed: () {
              setState(() {
                this.milisegundos = 0;
              });
            },
            child: const Text(
              "Reiniciar",
              style: TextStyle(color: Colors.white, fontSize: 20),
            ))
      ],
    );
  }
}
