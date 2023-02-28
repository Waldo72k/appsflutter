import 'package:flutter/material.dart';

class GehenaScreen extends StatelessWidget {
  const GehenaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
            "Kivotos DB",
            style: TextStyle(fontSize: 30),
          )),
          leading: Image.asset(
            "assets/images/Gehena.png",
            color: Colors.white,
          )),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/gehena_background.jpg"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                    child: Image.asset(
                  "assets/images/gehena_logo_text.png",
                  color: Colors.white,
                  height: 350,
                )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: const [
                Expanded(
                  child: Text(
                    "Libertad, caos y problemas!",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
                    "La Gehenna Academy es una de las escuelas más grandes y antiguas de Kivotos. Su cultura corre a lo largo del concepto de Libertad y Caos. Debido a esto, existen muchos clubes o grupos problemáticos que utilizan el edificio principal y el edificio del club cuando y como les plazca. Esto ha obligado a los otros estudiantes a estudiar solo en áreas seleccionadas del campus.",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 10,
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
                    "La ideología de Gehenna es un marcado contraste con la de Trinity, lo que llevó a que ambas escuelas se convirtieran en enemigos mutuos hasta que el Consejo General de Estudiantes planeó el Tratado de Eden para mantener el statu quo entre las dos escuelas opuestas.",
                    style: TextStyle(
                        fontStyle: FontStyle.italic, color: Colors.white),
                    textAlign: TextAlign.justify,
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
              ],
            ),
            const SizedBox(
              height: 130,
            )
          ],
        ),
      ),
    );
  }
}
