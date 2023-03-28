import 'package:flutter/cupertino.dart';

class Constants {
  static sheetBoxDecoration(Color color) {
    return BoxDecoration(
      color: color,
      borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30), topRight: Radius.circular(30)),
    );
  }

  static customButton(
      String _text, double _height, Color color, void Function() ontap) {
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
}
