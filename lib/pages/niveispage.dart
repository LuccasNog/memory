import 'package:flutter/material.dart';

import '../consts/constants.dart';
import '../widgets/cardnivel.dart';

// Aqui vamos fazer a seleção do nível com vários grids
class NivelPage extends StatelessWidget {
  final Modo modo;
  const NivelPage({super.key, required this.modo});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nivel do Jogo'),
      ),
      body: Padding(
        padding: EdgeInsets.only(top: 48),
        child: GridView.count(
          //Quantas colunas
          crossAxisCount: 3,
          //Espaçamento para as laterais e vertical
          mainAxisSpacing: 20,
          crossAxisSpacing: 20,
          padding: EdgeInsets.all(24),
          children: [
            CardNivel(modo: modo, nivel: 6),
            CardNivel(modo: modo, nivel: 8),
            CardNivel(modo: modo, nivel: 10),
            CardNivel(modo: modo, nivel: 12),
            CardNivel(modo: modo, nivel: 14),
            CardNivel(modo: modo, nivel: 16),
            CardNivel(modo: modo, nivel: 18),
            CardNivel(modo: modo, nivel: 20),
            CardNivel(modo: modo, nivel: 22),
          ],
        ),
      ),
    );
  }
}
