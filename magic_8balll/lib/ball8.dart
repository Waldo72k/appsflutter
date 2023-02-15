import 'dart:math';

import 'package:flutter/material.dart';

class Ball8 extends StatefulWidget {
  const Ball8({super.key});

  @override
  State<Ball8> createState() => _Ball8State();
}

class _Ball8State extends State<Ball8> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [bolamagica(Random().nextInt(5) + 1)],
          ),
        ),
      ],
    );
  }

  Expanded bolamagica(bolaOcho) {
    return Expanded(
        child: TextButton(
      onPressed: () {
        setState(() {});
      },
      child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/$bolaOcho.png")),
    ));
  }
}
