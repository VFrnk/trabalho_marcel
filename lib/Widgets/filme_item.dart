import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Modelos/filme.dart';
import 'package:trabalho_mensal/Telas/filme_detalhes.dart';

class FilmeItem extends StatelessWidget {
  const FilmeItem({super.key, required this.filme});

  final Filme filme;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      clipBehavior: Clip.hardEdge,
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => DetalhesFilme(filme: filme)));
        },
        child: Stack(
          children: [
            FadeInImage(
              placeholder: const NetworkImage(
                  'https://www.google.com/url?sa=i&url=https%3A%2F%2Fpt.vecteezy.com%2Fvetor-gratis%2Ftransparente&psig=AOvVaw3_KML7pB7_yUuESI6UmYCW&ust=1733869411251000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCIi8y5Xdm4oDFQAAAAAdAAAAABAE'),
              image: NetworkImage(filme.url),
              fit: BoxFit.cover,
              width: double.infinity,
              height: 200,
            ),
            Container(
              width: double.infinity,
              height: 200,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.black.withOpacity(0.7), Colors.transparent],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    filme.titulo,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  Text(
                    filme.ano,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
