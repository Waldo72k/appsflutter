import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text("Introduccion a Flutter", 
          style: TextStyle(fontSize: 30, color: Colors.cyan),
          )),
        leading: const Icon(Icons.home, 
        size: 40, 
        color: Colors.white,
        ),
      ),
      body: const Text("Body boi"),
    );
  }
}