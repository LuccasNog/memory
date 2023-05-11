import 'package:flutter/material.dart';
import 'package:jogomemori/pages/home.dart';

import 'colors/theme.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo de memoria',
      debugShowCheckedModeBanner: false,
      theme: Round6Theme.theme,
      home: HomePage(),
    );
  }
}
