import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Dados/dados.dart';
import 'package:trabalho_mensal/Telas/filmes.dart';
import 'package:trabalho_mensal/Telas/generos.dart';

class TelaIntegrantes extends StatelessWidget{
  const TelaIntegrantes({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 34, 34, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Integrantes'
        ),
        leading: Builder(builder: (context) => IconButton(
            onPressed:(){
              Scaffold.of(context).openDrawer();
            },
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
                onTap:(){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const TelaFilmes(filmes: filmesDisponiveis)));
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
                    'Lista de filmes',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              InkWell(
                onTap: (){
                  Navigator.push(context,MaterialPageRoute(
                      builder: (context) => const TelaSelecao()));
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
                child: Container(
                  padding: const EdgeInsets.all(10),
                  margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  width: double.infinity,
                  alignment: Alignment.centerLeft,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 38, 38, 43),
                    border: Border.all(color: Colors.white),
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
      body: const Center(
        child: Column(
          children: [
            SizedBox(height: 30,),
            Text(
              'Vitor Frank Rocha Carvalho',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Ruan Leonardo Carneiro Maia',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 10,),
            Text(
              'Luis Gustavo',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),
            ),
            SizedBox(height: 70,),
            Text(
              'Profº Marcel Moura',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18
              ),
            ),
          ],
        ),
      ),
    );
  }
}