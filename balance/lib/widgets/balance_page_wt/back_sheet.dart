import 'package:balance/utils/constants.dart';
import 'package:flutter/material.dart';

class BackSheet extends StatelessWidget {
  const BackSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: no_leading_underscores_for_local_identifiers
    _cabeceras(String nombre, String cantidad, Color color) {
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10 + 3, bottom: 5),
            child: Text(nombre,
                style: const TextStyle(
                  letterSpacing: 1.5,
                )),
          ),
          Text(cantidad,
              style: TextStyle(
                color: color,
                letterSpacing: 1.5,
              )),
        ],
      );
    }

    return Container(
      height: 250,
      decoration:
          Constants.sheetBoxDecoration(Theme.of(context).primaryColorDark),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _cabeceras("Ingresos", "\$ 1,000.00", Colors.green),
          const VerticalDivider(
            thickness: 2,
          ),
          _cabeceras("Gastos", "\$ 500.00", Colors.red)
        ],
      ),
    );
  }
}
