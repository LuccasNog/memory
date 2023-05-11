import 'package:flutter/material.dart';
import 'package:jogomemori/colors/theme.dart';

import '../consts/constants.dart';

class RecordesPage extends StatelessWidget {
  final Modo modo;
  List<String> niveis = ['Modo', 'Nível 8', 'Nível 10', 'Nível 11'];

  RecordesPage({super.key, required this.modo});

  getModo() {
    //if e else
    // Se for modo normal, retorna normal, else retorno ROUNDE 6
    return modo == Modo.normal ? 'Normal' : 'Round 6';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Recordes'),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: ListView.separated(
            itemBuilder: (BuildContext context, int index) {
              //função que vamos executar, vai fazer a escolha de qual modo escolher.

              //if
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.only(top: 36, bottom: 24),
                      child: Center(
                        child: Text(
                          'Modo ${getModo()}',
                          style:
                              TextStyle(fontSize: 28, color: Round6Theme.color),
                        ),
                      ),
                    )
                  //else
                  : ListTile(
                      title: Text(niveis[index]),
                      trailing: const Text('X jogadas'),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(15))),
                    );
            },
            separatorBuilder: (_, __) => Divider(
                  color: Colors.transparent,
                ),
            itemCount: niveis.length),
      ),
    );
  }
}
