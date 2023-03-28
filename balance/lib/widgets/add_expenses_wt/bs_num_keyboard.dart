import 'package:flutter/material.dart';

class BSNumKeyboard extends StatefulWidget {
  const BSNumKeyboard({super.key});

  @override
  State<BSNumKeyboard> createState() => _BSNumKeyboardState();
}

class _BSNumKeyboardState extends State<BSNumKeyboard> {
  String importe = '0.00';

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _numPad();
      },
      child: Padding(
        padding: const EdgeInsets.all(7.2),
        child: Column(
          children: [
            Text("Cantidad ingresada"),
            Text(
              "\$ $importe",
              style: const TextStyle(
                  fontSize: 27, letterSpacing: 2, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }

  _numPad() {
    _num(String _text, double _height) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () {
          setState(() {
            if (importe == '0.00' || importe == "0") {
              importe = _text;
            } else if (!RegExp(r'^(\d+\.\d{2})?$').hasMatch(importe)) {
              importe += _text;
            } else {
              importe += "";
            }
          });
        },
        child: SizedBox(
          height: _height,
          child: Center(
            child: Text(
              _text,
              style: const TextStyle(fontSize: 27),
            ),
          ),
        ),
      );
    }

    _btn(String _text, double _height, Color color, void Function() ontap) {
      return GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: ontap,
        child: Container(
          height: _height,
          color: color,
          child: Center(
            child: Text(
              _text,
              style: const TextStyle(fontSize: 27),
            ),
          ),
        ),
      );
    }

    showModalBottomSheet(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        // isDismissible: false,
        // enableDrag: false,
        // barrierColor: Colors.transparent,
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(27))),
        context: context,
        builder: (BuildContext context) {
          return SizedBox(
            height: 720,
            child: LayoutBuilder(
                builder: (BuildContext context, BoxConstraints constraints) {
              var height = constraints.biggest.height / 6;
              return Column(
                mainAxisAlignment:
                    MainAxisAlignment.center, //esto no lo pusimos en class
                children: [
                  Table(
                    border: TableBorder.symmetric(
                        inside: const BorderSide(
                      color: Colors.grey,
                      width: 0.7,
                    )),
                    children: [
                      TableRow(children: [
                        _num('1', height),
                        _num('2', height),
                        _num('3', height),
                      ]),
                      TableRow(children: [
                        _num('4', height),
                        _num('5', height),
                        _num('6', height),
                      ]),
                      TableRow(children: [
                        _num('7', height),
                        _num('8', height),
                        _num('9', height),
                      ]),
                      TableRow(children: [
                        _btn(".", height, Colors.transparent, () {
                          setState(() {
                            if (importe == '0.00') {
                              importe = '0';
                              importe += ".";
                            } else if (importe.contains(".")) {
                              importe += "";
                            } else {
                              importe += ".";
                            }
                          });
                        }),
                        _btn("0", height, Colors.transparent, () {
                          setState(() {
                            //////////Implementar mas validaciones del 0, una es lo del punto decimal despues del cero si es que el usuario mete algo y el unico es cero, que se intercambie el valor, obviamente tiene que no ser decimal
                            if (importe == "0.00") {
                              importe = "0";
                            } else if (!importe.contains(".") &&
                                importe.startsWith("0")) {
                              importe += "";
                            } else if (importe.contains(".")) {
                              if (RegExp(r'^\d+(\.\d{2})?$')
                                  .hasMatch(importe)) {
                                importe += "";
                              } else {
                                importe += "0";
                              }
                            } else if (!importe.contains(".")) {
                              importe += "0";
                            }
                          });
                        }),
                        GestureDetector(
                          behavior: HitTestBehavior.opaque,
                          onLongPress: () {
                            setState(() {
                              importe = '0.00';
                            });
                          },
                          onTap: () {
                            setState(() {
                              if (importe.isNotEmpty) {
                                importe =
                                    importe.substring(0, importe.length - 1);
                              }
                              if (importe == '' || importe == "0.0") {
                                importe = '0.00';
                              }
                            });
                          },
                          child: SizedBox(
                              height: height,
                              child: const Icon(
                                Icons.backspace,
                                size: 35,
                              )),
                        ),
                      ]),
                    ],
                  ),
                  Table(
                    border: TableBorder.symmetric(
                        inside: const BorderSide(
                      color: Colors.grey,
                      width: 0.7,
                    )),
                    children: [
                      TableRow(children: [
                        _btn('Cancelar', height, Colors.red, () {
                          setState(() {
                            importe = '0.00';
                            Navigator.pop(context);
                          });
                        }),
                        _btn('Aceptar', height, Colors.green, () {
                          Navigator.pop(context);
                        }),
                      ])
                    ],
                  )
                ],
              );
            }),
          );
        });
  }
}
