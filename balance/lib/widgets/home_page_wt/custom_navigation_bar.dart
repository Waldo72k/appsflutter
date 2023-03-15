import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(elevation: 0, items: const [
      BottomNavigationBarItem(
          label: 'Balance', icon: Icon(Icons.account_balance)),
      BottomNavigationBarItem(label: 'Graficos', icon: Icon(Icons.bar_chart)),
      BottomNavigationBarItem(label: 'Ajustes', icon: Icon(Icons.settings)),
    ]);
  }
}
