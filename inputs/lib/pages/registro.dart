import 'package:flutter/material.dart';
import 'package:inputs/inputs.dart';

class Registro extends StatelessWidget {
  const Registro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            "Registro",
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
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            const Inputs(
              tipoTipado: TextInputType.multiline,
              labelNombre: "Nombre Usuario",
              longitudInput: 100,
              obscurerInput: false,
            ),
            const Inputs(
              tipoTipado: TextInputType.multiline,
              labelNombre: "Contraseña",
              longitudInput: 18,
              obscurerInput: true,
              iconoSufijo: Icon(Icons.remove_red_eye),
            ),
            const Inputs(
              tipoTipado: TextInputType.emailAddress,
              labelNombre: "Email",
              obscurerInput: false,
            ),
            const Inputs(
                tipoTipado: TextInputType.phone,
                labelNombre: "Edad",
                obscurerInput: false),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.mark_as_unread),
                    label: const Text("Finalizar registro"))
              ],
            )
          ]),
        ));
  }
}
