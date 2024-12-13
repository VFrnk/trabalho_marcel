import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Modelos/filme.dart';
import 'package:trabalho_mensal/Telas/generos.dart';
import 'package:trabalho_mensal/Telas/integrantes.dart';
import 'package:trabalho_mensal/Widgets/filme_item.dart';

class TelaFilmes extends StatelessWidget {
  const TelaFilmes({
    super.key,
    required this.filmes,
  });

  final List<Filme> filmes;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const  Color.fromRGBO(34, 34, 34, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Selecione um filme'),
        leading: Builder(builder: (context) => IconButton(
            onPressed: (){Scaffold.of(context).openDrawer();},
            icon: const Icon(Icons.menu))),
      ),
      drawer: Drawer(
          backgroundColor: Colors.black,
          width: 200,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(height: 40,),
              const Text(
                'BetFlix',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(height: 20,),
              InkWell(
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 38, 38, 43),
                    border: Border.all(color: Colors.white)
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
                  Navigator.push(context, MaterialPageRoute(builder:(context) => const TelaSelecao()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: const Color.fromARGB(255, 38, 38, 43),
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
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(builder: (context) => const TelaIntegrantes()));
                },
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 38, 38, 43),
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
          )
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            for(var filme in filmes)
              FilmeItem(filme: filme)
          ],
        ),
      )
    );
  }
}