import 'package:trabalho_mensal/Modelos/genero.dart';
import 'package:trabalho_mensal/Modelos/filme.dart';

const generosDeFilme = [
  Genero(
    id: 'g1',
    nome: 'Ação',
  ),
  Genero(
      id: 'g2',
      nome: 'Suspense',
  ),
  Genero(
      id: 'g3',
      nome: 'Romance',
  ),
  Genero(
      id: 'g4',
      nome: 'Drama',
  ),
  Genero(
      id: 'g5',
      nome: 'Ficção Científica'),
  Genero(
      id: 'g6',
      nome: 'Aventura'
  ),
  Genero(
      id: 'g7',
      nome: 'Crime'),
  Genero(id: 'g8', nome: 'Comédia')
];

const filmesDisponiveis = [
  Filme(
    titulo: 'A Origem',
    duracao: '148 min',
    ano: '2010' ,
    generos: ['g1', 'g5', 'g2'],
    sinopse: 'Dom Cobb é um ladrão habilidoso na arte de roubar segredos valiosos do subconsciente durante o estado de sonho, quando a mente está mais vulnerável. Ele é contratado para realizar o trabalho inverso: implantar uma ideia na mente de alguém.' ,
    url: 'https://cinepop.com.br/wp-content/uploads/2021/07/a-origem.jpg' ,
  ),
  Filme(
      titulo: 'Um Sonho de Liberdade',
      duracao: '142 min',
      ano: '1994',
      generos: ['g4', 'g7'],
      sinopse: 'Andy Dufresne, um banqueiro condenado por um crime que não cometeu, forma um vínculo com um companheiro de cela e encontra uma forma de sobreviver ao ambiente opressor da prisão.',
      url: 'https://blog.fortestecnologia.com.br/wp-content/uploads/2019/02/fortes-tecnologia-um-sonho-de-liberdade.png'),
  Filme(
    titulo: 'O Poderoso Chefão',
    duracao: '175 min',
    ano: '1972',
    generos: ['g4','g7'],
    sinopse: 'A história da ascensão e queda da família mafiosa Corleone, liderada por Vito Corleone, e a luta de seu filho Michael para assumir o controle do império.',
    url: 'https://gizmodo.uol.com.br/wp-content/blogs.dir/8/files/2022/02/Marlon-Brando-em-O-Poderoso-Chefao-Reproducao-1536x864.jpg'
  ),
  Filme(
      titulo: 'Interestelar',
      duracao: '169 min',
      ano: '2014',
      generos:['g5', 'g6', 'g4'],
      sinopse: 'Em um futuro onde a Terra está à beira do colapso, um grupo de astronautas embarca em uma missão para atravessar um buraco de minhoca em busca de um novo lar para a humanidade.',
      url: 'https://diariodonordeste.verdesmares.com.br/image/contentid/policy:1.3580195:1730981795/Interestelar.jpg'),
  Filme(
      titulo: 'Pulp Fiction: Tempo de Violência',
      duracao: '154 min',
      ano: '1994',
      generos: ['g7','g4','g8'],
      sinopse: 'Histórias interligadas de dois assassinos de aluguel, um boxeador, a esposa de um gângster e dois ladrões de restaurantes.',
      url: 'https://jpimg.com.br/uploads/2024/10/pulp-688x450.jpg'),
  Filme(
      titulo: 'Matrix',
      duracao: '136 min',
      ano: '1999',
      generos: ['g5','g1'],
      sinopse: 'Neo descobre que o mundo como ele conhece é uma simulação, e se junta a um grupo de rebeldes para lutar contra as máquinas que controlam a humanidade.',
      url: 'https://s2.glbimg.com/kH0D1eqK32a1thZ0ctmO4S64I6U=/e.glbimg.com/og/ed/f/original/2019/05/20/matrix_1999.jpg'),
  Filme(
      titulo: 'Forrest Gump: O Contador de Histórias',
      duracao: '142 min',
      ano: '1994',
      generos: ['g4','g3'],
      sinopse: 'Forrest Gump, um homem com baixo QI, narra a incrível história de sua vida, atravessando décadas de eventos históricos e tocando a vida de muitas pessoas.',
      url: 'https://jpimg.com.br/uploads/2019/02/mini124.jpg'),
  Filme(
    titulo: 'O Senhor dos Anéis: A Sociedade do Anel',
    duracao: '178 min',
    ano: '2001',
    generos: ['g6', 'g5', 'g4'],
    sinopse: 'Frodo Baggins e seus amigos começam uma jornada para destruir um anel poderoso, a fim de evitar que ele caia nas mãos do Senhor das Trevas, Sauron.',
    url: 'https://cinepop.com.br/wp-content/uploads/2021/01/o-senhor-dos-aneis-a-sociedade-do-anel.jpg',
  ),
  Filme(
    titulo: 'Vingadores: Guerra Infinita',
    duracao: '149 min',
    ano: '2018',
    generos: ['g1', 'g6'],
    sinopse: 'Os Vingadores e seus aliados tentam derrotar o poderosíssimo Thanos, que busca coletar todas as Joias do Infinito para exterminar metade do universo.',
    url: 'https://s2.glbimg.com/2C0hMRuCY_7NfDPjby4_Bjmq8Nc=/e.glbimg.com/og/ed/f/original/2018/03/22/avengers-infinity-war-official-poster-2018-4o.jpg',
  ),
  Filme(
    titulo: 'La La Land: Cantando Estações',
    duracao: '128 min',
    ano: '2016',
    generos: ['g3', 'g4'],
    sinopse: 'Mia, uma aspirante a atriz, e Sebastian, um músico de jazz, se apaixonam enquanto lutam para seguir seus sonhos em Los Angeles.',
    url: 'https://rollingstone.com.br/media/_versions/emma_stone_e_ryan_gosling_em_la_la_land_foto_divulgacao_widelg.jpg',
  ),
];