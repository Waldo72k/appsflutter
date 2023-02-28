import 'package:flutter/material.dart';

class TrinityScreen extends StatelessWidget {
  const TrinityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
              "Trinity",
              style: TextStyle(
                fontSize: 30,
              ),
            )),
            leading: Image.asset(
              "assets/images/Trinity.png",
              color: Colors.white,
            )),
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg_trinity.png"),
                  fit: BoxFit.cover),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    "assets/images/trinity_logo_text.png",
                    color: Colors.white,
                    height: 350,
                  )),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Text(
                      "Una escuela religiosa decorosa en Kivotos. Trinity aboga por la armonía, además de cultivar simultáneamente tanto la pluma como la espada. Es tanto una de las escuelas más antiguas de Kivotos como una de las más grandes. La dedicación de la escuela al orden, la elegancia y la etiqueta los pone en conflicto con las ideologías de libertad y caos de Gehenna. Como tal, siempre ha habido una sensación de odio y conflicto entre las dos academias.",
                      style: TextStyle(
                        fontStyle: FontStyle.italic,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.justify,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                ],
              ),
              const SizedBox(
                height: 224,
              ),
            ])));
  }
}
