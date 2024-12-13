import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Dados/dados.dart';
import 'package:trabalho_mensal/Telas/filmes.dart';
import 'package:trabalho_mensal/Telas/generos.dart';
import 'package:trabalho_mensal/Telas/integrantes.dart';

class Aba extends StatelessWidget {
  const Aba({super.key, required this.secao});

  final int secao;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.black,
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(
            height: 40,
          ),
          const Text(
            'BetterFlix',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              if (secao != 1) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const TelaFilmes(filmes: filmesDisponiveis)));
              }
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 38, 38, 43),
                border: secao == 1 ? Border.all(color: Colors.white) : null,
              ),
              child: const Text(
                'Lista de filmes',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (secao != 2) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaSelecao()));
              }
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 38, 38, 43),
                border: secao == 2 ? Border.all(color: Colors.white) : null,
              ),
              child: const Text(
                'Selecionar categoria',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              if (secao != 3) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaIntegrantes()));
              }
            },
            child: Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              width: double.infinity,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: const Color.fromARGB(255, 38, 38, 43),
                border: secao == 3 ? Border.all(color: Colors.white) : null,
              ),
              child: const Text(
                'Integrantes do grupo',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
