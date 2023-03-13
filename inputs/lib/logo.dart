import 'package:flutter/material.dart';

class Logo extends StatefulWidget {
  final String logoImagen;
  final String sloganLogo;
  const Logo({required this.sloganLogo, required this.logoImagen, super.key});

  @override
  State<Logo> createState() => _LogoState();
}

class _LogoState extends State<Logo> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 50, 0, 50),
      child: Column(
        children: [
          Container(
            height: 250,
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(widget.logoImagen))),
          ),
          Text(
            '`${widget.sloganLogo}`',
            style: const TextStyle(
                color: Color.fromARGB(255, 0, 26, 48),
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.bold,
                fontSize: 15,
                shadows: [
                  Shadow(
                      // bottomLeft
                      offset: Offset(-0.2, -0.2),
                      color: Colors.white),
                  Shadow(
                      // bottomRight
                      offset: Offset(0.2, -0.2),
                      color: Colors.white),
                  Shadow(
                      // topRight
                      offset: Offset(0.2, 0.2),
                      color: Colors.white),
                  Shadow(
                      // topLeft
                      offset: Offset(-0.2, 0.2),
                      color: Colors.white),
                ]),
          )
        ],
      ),
    );
  }
}
