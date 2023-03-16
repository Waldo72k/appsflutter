import 'package:flutter/material.dart';
import 'package:inputs/fondo.dart';
import 'package:inputs/inputs.dart';
import 'package:inputs/logo.dart';
import 'package:inputs/pages/registro.dart';

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
        body: Fondo(
          imagenFondo: "assets/images/space.jpg",
          opacidadFondo: 0.9,
          hijo: Expanded(
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
                        tipoTipado: TextInputType.multiline,
                        labelNombre: "Nombre Usuario",
                        obscurerInput: false,
                      ),
                      Inputs(
                        tipoTipado: TextInputType.multiline,
                        labelNombre: "Contraseña",
                        obscurerInput: true,
                        iconoSufijo: Icon(Icons.remove_red_eye),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Padding(
                        padding: const EdgeInsets.fromLTRB(50, 0, 0, 10),
                        child: TextButton(
                            onPressed: () {
                              Route route = MaterialPageRoute(
                                  builder: (__) => const Registro());
                              Navigator.push(context, route);
                            },
                            child: const Text("Registrate!")))
                  ],
                ),
              ],
            ),
          ),
        ));
  }
}
