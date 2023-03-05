import 'dart:async';

import 'package:flutter/material.dart';

class Cronometro extends StatefulWidget {
  const Cronometro({super.key});

  @override
  State<Cronometro> createState() => _CronometroState();
}

class _CronometroState extends State<Cronometro> {
  int milisegundos = 0;
  int milisegun = 0;
  bool estaCorriendo = false;
  late Timer timer;
  List vueltas = [];

//Para inciiar el cronometro
  void iniciarCronometro() {
    if (!estaCorriendo) {
      timer = Timer.periodic(
          const Duration(
            milliseconds: 10, //10
          ), (timer) {
        this.milisegundos += 10; //10
        this.milisegun += 10; //10
        setState(() {});
      });
      estaCorriendo = true;
    }
  }

  //Para inciiar el cronometro
  // void segundoReloj() {
  //   if (!estaCorriendo) {
  //     timer = Timer.periodic(
  //         const Duration(
  //           milliseconds: 10, //10
  //         ), (timer) {
  //       this.milisegun += 10; //10
  //       setState(() {});
  //     });
  //     estaCorriendo = true;
  //   }
  // }

//Para detener el cronometro
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

    milisegundos = milisegundos[0] + milisegundos[1];
    return '$horas:$minutos:$segundos:$milisegundos';
  }

  //Para agregar vueltas
  void agregarVuelta() {
    String dosValores(int valor) {
      return valor >= 10 ? "$valor" : "0$valor";
    }

    Duration duracion = Duration(milliseconds: this.milisegun);
    String horas = dosValores(duracion.inHours);
    String minutos = dosValores(duracion.inMinutes.remainder(60));
    String segundos = dosValores(duracion.inSeconds.remainder(60));
    String milisegun = dosValores(duracion.inMilliseconds.remainder(1000));

    milisegun = milisegun[0] + milisegun[1];

    String vuelta = '$horas:$minutos:$segundos:$milisegun';
    setState(() {
      vueltas.add(vuelta);
      this.milisegun = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          formatoTiempo(),
          style: const TextStyle(fontSize: 60, color: Colors.white),
        ),
        //Aqui va lo de las vueltas
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
              height: 400,
              decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(8.0)),
              child: ListView.builder(
                  itemCount: vueltas.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Vuelta n.${index + 1}",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                          Text(
                            "${vueltas[index]}",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                          ),
                        ],
                      ),
                    );
                  })),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
                onPressed: () {
                  iniciarCronometro();
                  // segundoReloj();
                },
                child: const Icon(
                  Icons.not_started_outlined,
                  size: 60,
                  color: Colors.green,
                )),
            TextButton(
                onPressed: agregarVuelta,
                child: const Icon(
                  Icons.flag_circle_outlined,
                  size: 60,
                  color: Colors.white,
                )),
            TextButton(
                onPressed: () {
                  detenerCronometro();
                },
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
                this.milisegun = 0;
              });
            },
            child: const Text(
              "Reiniciar",
              style: TextStyle(color: Colors.blue, fontSize: 20),
            ))
      ],
    );
  }
}
