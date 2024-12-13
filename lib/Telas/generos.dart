import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Dados/dados.dart';
import 'package:trabalho_mensal/Widgets/genero_selecao_item.dart';
import 'package:trabalho_mensal/Widgets/menu_aba.dart';

class TelaSelecao extends StatelessWidget {
  const TelaSelecao({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 34, 34, 0),
      appBar: AppBar(
        title: const Text(
          'Selecione uma categoria',
        ),
        backgroundColor: Colors.transparent,
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu))),
      ),
      drawer: const Aba(secao: 2),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 5,
            ),
            for (var genero in generosDeFilme) GeneroSelecaoItem(genero: genero)
          ],
        ),
      ),
    );
  }
}
