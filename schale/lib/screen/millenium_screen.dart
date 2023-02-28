import 'package:flutter/material.dart';

class MilleniumScreen extends StatelessWidget {
  const MilleniumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Center(
                child: Text(
              "Millenium",
              style: TextStyle(
                fontSize: 30,
              ),
            )),
            leading: Image.asset(
              "assets/images/Millenium.png",
              color: Colors.white,
            )),
        body: Container(
            constraints: const BoxConstraints.expand(),
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/bg_millenium.jpg"),
                  fit: BoxFit.cover),
            ),
            child: Column(mainAxisAlignment: MainAxisAlignment.end, children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Image.asset(
                    "assets/images/millenium_logo_text.png",
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
                      "La más nueva de las Tres Grandes Academias de Kivotos, que valora la lógica y la habilidad técnica por encima de todo. Por eso, están a la vanguardia de la investigación científica y atraen a muchos estudiantes que desean estudiar matemáticas o ciencias. Aunque Millennium carece de las antiguas tradiciones y la historia de Trinity y Gehenna, Millennium puede competir con ellos en términos de influencia, ya que se dice que muchas de las infraestructuras, equipos e inventos vistos y utilizados en todo Kivotos se originaron en Millennium.",
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
