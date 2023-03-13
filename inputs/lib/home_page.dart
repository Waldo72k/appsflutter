import 'package:flutter/material.dart';
import 'package:inputs/inputs.dart';
import 'package:inputs/logo.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Login e inputs",
            style: TextStyle(
              fontSize: 30,
            ),
          )),
        ),
        body: Container(
          constraints: const BoxConstraints.expand(),
          decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/space.jpg"),
                fit: BoxFit.cover,
                opacity: 0.9),
          ),
          child: Expanded(
            child: Column(
              children: [
                const Logo(
                  logoImagen: "assets/images/ARIUS_Icon.png",
                  sloganLogo: "Vanitas vanitatum, et omnia vanitas",
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Inputs(
                        labelNombre: "Nombre Usuario",
                      ),
                      Inputs(
                        labelNombre: "Contraseña",
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(50, 0, 0, 100),
                      child: TextButton(
                          onPressed: () {}, child: const Text("Registrate")),
                    )
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
