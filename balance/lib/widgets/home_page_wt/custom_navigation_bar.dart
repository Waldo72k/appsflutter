import 'package:balance/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  // var _Index = 1;

  @override
  Widget build(BuildContext context) {
    final uiProvider = Provider.of<UIProvider>(context);

    return BottomNavigationBar(
        currentIndex: uiProvider.bnbIndex,
        onTap: (int i) => uiProvider.bnbIndex = i,
        // currentIndex: _Index,
        elevation: 0,
        // onTap: (int i) => _Index = i,
        items: const [
          BottomNavigationBarItem(
              label: 'Balance', icon: Icon(Icons.account_balance)),
          BottomNavigationBarItem(
              label: 'Graficos', icon: Icon(Icons.bar_chart)),
          BottomNavigationBarItem(label: 'Ajustes', icon: Icon(Icons.settings)),
        ]);
  }
}
