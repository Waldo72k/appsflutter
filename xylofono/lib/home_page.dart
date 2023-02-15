import 'package:flutter/material.dart';
import 'package:audiofileplayer/audiofileplayer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var sonidosX = [];

  Audio sonidoUno = Audio.load("assets/sounds/assets_note1.wav");
  Audio sonidoDos = Audio.load("assets/sounds/assets_note2.wav");
  Audio sonidoTres = Audio.load("assets/sounds/assets_note3.wav");
  Audio sonidoCuatro = Audio.load("assets/sounds/assets_note4.wav");
  Audio sonidoCinco = Audio.load("assets/sounds/assets_note5.wav");
  Audio sonidoSeis = Audio.load("assets/sounds/assets_note6.wav");
  Audio sonidoSiete = Audio.load("assets/sounds/assets_note7.wav");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        ),
        boton1(),
        boton2(),
        boton3(),
        boton4(),
        boton5(),
        boton6(),
        boton7(),
      ],
    ));
  }

  Container boton7() {
    return Container(
      color: Colors.deepPurple,
      height: 105,
      width: 400,
      child: TextButton(
        onPressed: () {
          sonidoSiete.play();
        },
        child: const Text(""),
      ),
    );
  }

  Container boton6() {
    return Container(
      color: Colors.blue,
      height: 120,
      width: 400,
      child: TextButton(
        onPressed: () {
          sonidoSeis.play();
        },
        child: const Text(""),
      ),
    );
  }

  Container boton5() {
    return Container(
      color: Colors.lightBlueAccent,
      height: 120,
      width: 410,
      child: TextButton(
        onPressed: () {
          sonidoCinco.play();
        },
        child: const Text(""),
      ),
    );
  }

  Container boton4() {
    return Container(
      color: Colors.lightGreenAccent,
      height: 120,
      width: 420,
      child: TextButton(
        onPressed: () {
          sonidoCuatro.play();
        },
        child: const Text(""),
      ),
    );
  }

  Container boton3() {
    return Container(
      color: Colors.yellowAccent,
      height: 120,
      width: 420,
      child: TextButton(
        onPressed: () {
          sonidoTres.play();
        },
        child: const Text(""),
      ),
    );
  }

  Container boton2() {
    return Container(
      color: Colors.orange,
      height: 120,
      width: 420,
      child: TextButton(
        onPressed: () {
          sonidoDos.play();
        },
        child: const Text(""),
      ),
    );
  }

  Container boton1() {
    return Container(
      color: Colors.red,
      height: 120,
      width: 420,
      child: TextButton(
        onPressed: () {
          sonidoUno.play();
        },
        child: const Text(""),
      ),
    );
  }
}
