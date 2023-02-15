import 'package:flutter/material.dart';
import 'dart:math';

class Dice extends StatefulWidget {
  const Dice({super.key});

  @override
  State<Dice> createState() => _DiceState();
}

class _DiceState extends State<Dice> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            dado(Random().nextInt(6) + 1),
            dado(Random().nextInt(6) + 1),
          ],
        ),
      ],
    );
  }

  Expanded dado(valorDado) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {});
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Image.asset("assets/images/dice$valorDado.jpg"),
        ),
      ),
    );
  }
}
