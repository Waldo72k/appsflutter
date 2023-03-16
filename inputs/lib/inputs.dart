import 'package:flutter/material.dart';

class Inputs extends StatefulWidget {
  final String labelNombre;
  final bool obscurerInput;
  final int? longitudInput;
  final TextInputType tipoTipado;
  final Widget? iconoSufijo;
  final Widget? iconoPrefijo;
  final Widget? iconoPrefix;

  const Inputs(
      {this.iconoPrefijo,
      this.iconoPrefix,
      this.iconoSufijo,
      this.tipoTipado = TextInputType.multiline,
      this.obscurerInput = false,
      this.longitudInput,
      this.labelNombre = "",
      super.key});

  @override
  State<Inputs> createState() => _InputsState();
}

class _InputsState extends State<Inputs> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            // readOnly: true, este es para que no se pueda modificar, para activarse tras cumplir x condicion me imagino
            obscureText: widget.obscurerInput,
            autocorrect: false,
            keyboardType: TextInputType.multiline,
            textAlign: TextAlign.center,
            maxLength: widget.longitudInput,
            decoration: InputDecoration(
                // icon: const Icon(
                //   Icons.lock,
                //   size: 40,
                // ),
                iconColor: Colors.amber,
                labelText:
                    widget.labelNombre, //el color que agarra es el del tema hue
                labelStyle: const TextStyle(color: Colors.blueAccent),
                helperText: "",
                isCollapsed: false,
                contentPadding: const EdgeInsets.fromLTRB(
                    10, 30, 10, 10), //LTRB = Left, Top, Right, Bottom
                prefix: widget.iconoPrefix, //const Icon(Icons.abc),
                prefixIcon:
                    widget.iconoPrefijo, //const Icon(Icons.abc_outlined),
                suffixIcon:
                    widget.iconoSufijo, //const Icon(Icons.remove_red_eye),
                border: const OutlineInputBorder(), // Pa moverle el contorno
                constraints: const BoxConstraints(maxWidth: double.infinity)),
            cursorRadius: const Radius.circular(40),
            style: const TextStyle(color: Colors.black, fontSize: 30),
          ),
        ),
      ),
    );
  }
}
