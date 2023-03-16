import 'package:flutter/material.dart';

class UIProvider extends ChangeNotifier {
  //Se extiende de Changenotifier para decir que esta clase hace lo de avisar al main que un valor cambio
  int _bnbIndex = 0;

  int get bnbIndex => _bnbIndex;

  // ignore: unused_element
  set bnbIndex(int i) {
    _bnbIndex = i;
    notifyListeners(); //Este avisa al main que esta pagina esta haciendo un cambio, para comunicarlo a las dif paginas
  }
}
