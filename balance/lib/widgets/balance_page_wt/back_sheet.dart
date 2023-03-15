import 'package:flutter/material.dart';

class BackSheet extends StatelessWidget {
  const BackSheet({super.key});

  @override
  Widget build(BuildContext context) {
    _cabeceras(String nombre, String cantidad) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10 + 3, bottom: 5),
            child: Text(nombre,
                style: TextStyle(
                  color: Theme.of(context).cardColor,
                  letterSpacing: 1.5,
                )),
          ),
          Text(cantidad,
              style: TextStyle(
                color: Theme.of(context).cardColor,
                letterSpacing: 1.5,
              )),
        ],
      );
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _cabeceras("Ingresos", "\$ 1,000.00"),
        const VerticalDivider(
          thickness: 2,
        ),
        _cabeceras("Gastos", "\$ 500.00")
      ],
    );
  }
}
