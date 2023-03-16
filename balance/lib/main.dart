import 'package:balance/provider/ui_provider.dart';
import 'package:flutter/material.dart';
import 'package:balance/pages/home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => UIProvider())],
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Baranchi',
      theme: ThemeData.dark().copyWith(
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[900],
          ),
          scaffoldBackgroundColor: Colors.grey[900],
          bottomNavigationBarTheme: const BottomNavigationBarThemeData(
            selectedItemColor: Colors.blue,
            // selectedIconTheme: IconThemeData(color: Colors.amber
          )),
      initialRoute: 'home',
      routes: {
        'home': (_) => const HomePage(),
      },
    );
  }
}
