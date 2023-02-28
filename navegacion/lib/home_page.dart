import 'package:flutter/material.dart';
import 'package:navegacion/screen/help_screen.dart';
import 'package:navegacion/screen/login_screen.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          ListTile(
            title: const Text("Ir al Login"),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const CircleAvatar(child: Text("🏠")),
            subtitle: const Text("Amonos al Login pa"),
            onTap: () {
              final ruta = MaterialPageRoute(
                builder: (_) => const LoginScreen(),
              );
              Navigator.push(context, ruta);
            },
          ),
          ListTile(
            title: const Text("Ir a ayuda"),
            trailing: const Icon(Icons.arrow_forward_ios),
            leading: const CircleAvatar(child: Text("🆘")),
            subtitle: const Text("Te ayudo Pai"),
            onTap: () {
              final ruta = MaterialPageRoute(
                builder: (_) => const HelpScreen(),
              );
              Navigator.push(context, ruta);
            },
          )
        ],
      ),
    );
  }
}
