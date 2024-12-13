import 'package:trabalho_mensal/Dados/dados.dart';
import 'package:trabalho_mensal/Modelos/genero.dart';
import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Telas/filmes.dart';

class GeneroSelecaoItem extends StatelessWidget {
  const GeneroSelecaoItem({
    super.key,
    required this.genero});

  final Genero genero;

  @override
  Widget build(BuildContext context){
    return InkWell(
      onTap: () {Navigator.push(context, MaterialPageRoute(
          builder: (context) => TelaFilmes(
            filmes: filmesDisponiveis.where((filme) => filme.generos.contains(genero.id)).toList()
          ))
      );
      },
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 10),
        child: Stack(
          children: [
            Container(
              width: double.maxFinite,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: Colors.redAccent.withOpacity(0.55)
              ),
              child: Text(
                genero.nome,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onSurface
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [Colors.transparent, Colors.black54])
                ),
              ),
            )
          ],
        )
      ),
    );
  }
}