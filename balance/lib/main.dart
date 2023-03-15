import 'package:flutter/material.dart';
import 'package:balance/pages/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baranchi',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomePage(),
      },
    );
  }
}
