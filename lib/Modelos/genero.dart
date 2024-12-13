import 'package:flutter/material.dart';

class Genero {
  const Genero({
    required this.id,
    required this.nome,
    this.cor = Colors.orange
  });

  final String id;
  final String nome;
  final Color cor;
}