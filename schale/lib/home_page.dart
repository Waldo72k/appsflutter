import 'package:flutter/material.dart';
import 'package:schale/screen/gehena_screen.dart';
import 'package:schale/screen/millenium_screen.dart';
import 'package:schale/screen/trinity_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Center(
              child: Text(
            "Kivotos DB",
            style: TextStyle(fontSize: 30, color: Colors.white),
          )),
          leading: Image.asset("assets/images/Schale_Icon_1.webp")),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/images/kivotos.webp"),
              fit: BoxFit.cover),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(child: Image.asset("assets/images/ba_logo_1.webp")),
              ],
            ),
            const SizedBox(
              height: 30,
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
                    "Kivotos es el hogar de miles de academias diferentes, siendo las más notables nueve de estas y la organizacion SCHALE. Los estudiantes de la ciudad portan armas y teléfonos celulares abiertamente todos los días. También está repleto de tecnología avanzada, como robots, exotrajes y mechas gigantes.",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
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
              height: 20,
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
                    "Hoy mismo se llevara a cabo la firma del Tratado de Eden el cual establece un acuerdo de no agresion entre las dos academias rivales con un pasado lleno de odio entre ambas, ¿sera esto una trampa? Veamos una ligera introduccion a ambos bandos para ver de que se constituyen estos...",
                    style: TextStyle(
                      fontStyle: FontStyle.italic,
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
              height: 290,
            ),
            Container(
              color: Colors.blue,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color.fromARGB(0, 170, 147, 228),
                      backgroundImage:
                          const AssetImage("assets/images/Gehena.png"),
                      child: ListTile(
                        onTap: () {
                          final ruta = MaterialPageRoute(
                            builder: (_) => const GehenaScreen(),
                          );
                          Navigator.push(context, ruta);
                        },
                      )),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color.fromARGB(0, 170, 147, 228),
                      backgroundImage:
                          const AssetImage("assets/images/Millenium.png"),
                      child: ListTile(
                        onTap: () {
                          final ruta = MaterialPageRoute(
                            builder: (_) => const MilleniumScreen(),
                          );
                          Navigator.push(context, ruta);
                        },
                      )),
                  CircleAvatar(
                      radius: 30,
                      backgroundColor: const Color.fromARGB(0, 170, 147, 228),
                      backgroundImage:
                          const AssetImage("assets/images/Trinity.png"),
                      child: ListTile(
                        onTap: () {
                          final ruta = MaterialPageRoute(
                            builder: (_) => const TrinityScreen(),
                          );
                          Navigator.push(context, ruta);
                        },
                      )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
