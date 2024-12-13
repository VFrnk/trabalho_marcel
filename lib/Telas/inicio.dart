import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Dados/dados.dart';
import 'package:trabalho_mensal/Telas/filmes.dart';
import 'package:trabalho_mensal/Telas/generos.dart';

class TelaInicial extends StatelessWidget {
  const TelaInicial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('BetterFlix',
                style: TextStyle(color: Colors.white, fontSize: 30)),
            const SizedBox(
              height: 180,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            const TelaFilmes(filmes: filmesDisponiveis)));
              },
              borderRadius: BorderRadius.circular(14),
              child: Container(
                height: 70,
                width: 230,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Lista de Filmes',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const TelaSelecao()));
              },
              borderRadius: BorderRadius.circular(14),
              child: Container(
                height: 70,
                width: 230,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.red, borderRadius: BorderRadius.circular(10)),
                child: const Text(
                  'Selecionar Categoria',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
