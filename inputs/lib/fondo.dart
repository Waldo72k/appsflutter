import 'package:flutter/material.dart';

class Fondo extends StatefulWidget {
  final double opacidadFondo;
  final String imagenFondo;
  const Fondo(
      {required this.opacidadFondo, required this.imagenFondo, super.key});

  @override
  State<Fondo> createState() => _FondoState();
}

class _FondoState extends State<Fondo> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: const BoxConstraints.expand(),
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage(widget.imagenFondo),
            fit: BoxFit.cover,
            opacity: widget.opacidadFondo),
      ),
    );
  }
}
