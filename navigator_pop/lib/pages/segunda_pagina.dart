import 'package:flutter/material.dart';

class SegundaPagina extends StatelessWidget {
  final String nombre;

  const SegundaPagina({Key? key, required this.nombre}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                'Segunda',
                style: TextStyle(fontSize: 30),
              ),
            ],
          )),
          leading: IconButton(
              onPressed: () {
                Navigator.canPop(context);
                if (Navigator.canPop(context)) {
                  Navigator.pop(context);
                }
              },
              icon: const Icon(Icons.arrow_back)),
        ),
        body: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  '$nombre',
                  style: const TextStyle(fontSize: 30),
                ),
              ],
            ),
          ],
        ));
  }
}
