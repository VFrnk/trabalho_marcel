import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Modelos/filme.dart';
import 'package:trabalho_mensal/Widgets/filme_item.dart';
import 'package:trabalho_mensal/Widgets/menu_aba.dart';

class TelaFilmes extends StatelessWidget {
  const TelaFilmes({
    super.key,
    required this.filmes,
  });

  final List<Filme> filmes;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color.fromRGBO(34, 34, 34, 0),
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Selecione um filme'),
          leading: Builder(
              builder: (context) => IconButton(
                  onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                  icon: const Icon(Icons.menu))),
        ),
        drawer: const Aba(secao: 1),
        body: SingleChildScrollView(
          child: Column(
            children: [for (var filme in filmes) FilmeItem(filme: filme)],
          ),
        ));
  }
}
