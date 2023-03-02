import 'package:flutter/material.dart';
import 'package:navigator_pop/pages/segunda_pagina.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Inicio",
            style: TextStyle(fontSize: 30),
          )),
        ),
        body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Text(
              "Inicio",
              style: TextStyle(fontSize: 30),
            ),
            TextButton(
                onPressed: () {
                  Route route = MaterialPageRoute(
                      builder: (__) => const SegundaPagina(
                            nombre: "waldo",
                          ));
                  Navigator.push(context, route);
                },
                child: const Text("Ir a segunda pagina"))
          ]),
        ));
  }
}
