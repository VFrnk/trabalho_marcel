class Filme {
  const Filme({
    required this.titulo,
    required this.duracao,
    required this.ano,
    required this.generos,
    required this.sinopse,
    required this.url,
  });

  final String url;
  final String titulo;
  final String duracao;
  final String ano;
  final List<String> generos;
  final String sinopse;
}
