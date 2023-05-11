import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:jogomemori/colors/theme.dart';
import 'package:jogomemori/widgets/logo.dart';
import 'package:jogomemori/widgets/startbutton.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(24.0),
        child: Column(
          //Centralizando as colunas
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Logo(),
            StartButton(
                title: 'Modo Normal', color: Colors.white, action: () {}),
            StartButton(
                title: 'Modo Round 6', color: Round6Theme.color, action: () {}),
          ],
        ),
      ),
    );
  }
}
