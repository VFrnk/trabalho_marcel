import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Dados/dados.dart';
import 'package:trabalho_mensal/Modelos/filme.dart';

class DetalhesFilme extends StatelessWidget{
  const DetalhesFilme({
    super.key,
    required this.filme
  });
  
  final Filme filme;

  @override
  Widget build(BuildContext context){

    final generos = filme.generos.map((idGenero) => generosDeFilme.firstWhere((g) => g.id == idGenero).nome).toList().join(', ');

    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 34, 34, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      body: Column(
        children: [
          FadeInImage(
              placeholder: const NetworkImage('https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.vecteezy.com%2Fvetor-gratis%2Ftransparente&psig=AOvVaw3_KML7pB7_yUuESI6UmYCW&ust=1733869411251000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCIi8y5Xdm4oDFQAAAAAdAAAAABAE'),
              image: NetworkImage(filme.url)
          ),
          const SizedBox(height: 20,),
          Text(
            filme.titulo,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  filme.sinopse,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 30,),
                Text(
                  'Ano de lançamento: ${filme.ano}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Gêneros: $generos',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                Text(
                  'Duração: ${filme.duracao}',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 50,),
                Container(
                  height: 50,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red.withOpacity(0.7),
                    borderRadius: BorderRadius.circular(5)
                  ),
                  child: const Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Assistir',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20
                        ),
                      ),
                      Icon(Icons.play_arrow)
                    ],
                  )
                )
              ],
            )
          )
        ],
      ),
    );
  }
}