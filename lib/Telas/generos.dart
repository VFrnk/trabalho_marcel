import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Dados/dados.dart';
import 'package:trabalho_mensal/Telas/filmes.dart';
import 'package:trabalho_mensal/Telas/integrantes.dart';
import 'package:trabalho_mensal/Widgets/genero_selecao_item.dart';

class TelaSelecao extends StatelessWidget{
  const TelaSelecao({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const  Color.fromRGBO(34, 34, 34, 0),
      appBar: AppBar(
        title: const Text('Selecione uma categoria',),
        backgroundColor: Colors.transparent,
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
            const SizedBox(height: 5,),
            for(var genero in generosDeFilme)
              GeneroSelecaoItem(genero: genero)
          ],
        ),
      )
    );
  }
}