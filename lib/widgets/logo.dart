import 'package:flutter/material.dart';
import 'package:jogomemori/colors/theme.dart';

//codificando a logo com imagem e texto
class Logo extends StatelessWidget {
  const Logo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.only(bottom: 30),
          child: Image.asset(
            'images/host.png',
            width: 80,
            height: 125,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 40),
          child: RichText(
            //Deixando texto branco
            text: TextSpan(
                text: 'Round 6 ',
                style:
                    DefaultTextStyle.of(context).style.copyWith(fontSize: 30),
                children: const [
                  //Adicionando e deixando texto rosa
                  TextSpan(
                      text: 'Memory',
                      style: TextStyle(color: Round6Theme.color))
                ]),
          ),
        )
      ],
    );
  }
}
