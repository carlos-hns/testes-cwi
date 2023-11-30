import 'package:flutter/material.dart';
import 'package:testes_cwi/core/di.dart';
import 'package:testes_cwi/home/presentation/pages/home_page.dart';

void main() {
  setupGetIt();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Testes CWI',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
