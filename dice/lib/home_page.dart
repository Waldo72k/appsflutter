import 'package:flutter/material.dart';
import 'package:dice/dice.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text("Dados"),
      ),
      body: const Dice(),
    );
  }
}
