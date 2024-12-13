import 'package:flutter/material.dart';
import 'package:trabalho_mensal/Dados/dados.dart';
import 'package:trabalho_mensal/Widgets/menu_aba.dart';

class TelaIntegrantes extends StatelessWidget {
  const TelaIntegrantes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(34, 34, 34, 0),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Integrantes'),
        leading: Builder(
            builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(Icons.menu))),
      ),
      drawer: const Aba(secao: 3),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 30,
            ),
            ...integrantes.map((integrante) => Column(
                  children: [
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      integrante,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 70,
            ),
            const Text(
              'Profº Marcel Moura',
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
