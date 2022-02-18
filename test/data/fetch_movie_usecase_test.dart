import 'dart:convert';

import 'package:challenge_cubos/data/errors/exceptions.dart';
import 'package:challenge_cubos/data/fetch_movie_usecase.dart';
import 'package:challenge_cubos/data/models/movie_list.dart';
import 'package:challenge_cubos/infra/dio_client.dart';
import 'package:challenge_cubos/infra/http_service_interface.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../mocks/movie_genrerid_mock.dart';

class HttpClientMock extends Mock implements IHttpService {}

void main() {
  late HttpClientMock testHttpClient;
  late FetchMovieUseCase fetchMovieUseCase;

  setUp(() {
    testHttpClient = HttpClientMock();
    fetchMovieUseCase = FetchMovieUseCase(client: testHttpClient);
  });

  test('Should Return a ListMovieResults', () async {
    final fetchMovieUseCase = FetchMovieUseCase(client: DioClient());
    final response = await fetchMovieUseCase.fetchMovieByGenrer(tGenrerId);
    expect(response, isA<List<MovieResults>>());
  });

  // test('Should Throw Server Exception if Request show 404 code', () async {
  //   final tResponse = Response(
  //     requestOptions: RequestOptions(
  //       path: '',
  //     ),
  //     statusMessage: 'Not Found',
  //     statusCode: 404,
  //   );

  //   when(() => testHttpClient.get(any())).thenAnswer((_) async => tResponse);

  //   final response = await fetchMovieUseCase.fetchMovieByGenrer(tGenrerId);

  //   expect(() => response, throwsA(ServerException()));
  // });

  test('Should return a List de MovieResults with HttpClient Mock', () async {
    when(() => testHttpClient.get(any()))
        .thenAnswer((_) async => jsonDecode(jsonResponse));

    final response = await fetchMovieUseCase.fetchMovieByGenrer(tGenrerId);

    expect(response, isA<List<MovieResults>>());
  });
}

const jsonResponse = r'''
{
	"page": 1,
	"results": [
		{
			"adult": false,
			"backdrop_path": "/c6H7Z4u73ir3cIoCteuhJh7UCAR.jpg",
			"genre_ids": [
				28,
				12,
				14,
				878
			],
			"id": 524434,
			"original_language": "en",
			"original_title": "Eternals",
			"overview": "Após os eventos de \"Vingadores: Ultimato\", os Eternos, uma raça alienígena imortal criada pelos Celestiais que vivem em segredo na Terra há mais de 7000 anos, se reúnem após uma tragédia inesperada para proteger a humanidade de seus colegas malignos: os Deviantes.",
			"popularity": 11424.242,
			"poster_path": "/mzezdUZEnpiUIlxpdyLO1R08Lqm.jpg",
			"release_date": "2021-11-03",
			"title": "Eternos",
			"video": false,
			"vote_average": 7.3,
			"vote_count": 3139
		},
		{
			"adult": false,
			"backdrop_path": "/1Rr5SrvHxMXHu5RjKpaMba8VTzi.jpg",
			"genre_ids": [
				28,
				12,
				878
			],
			"id": 634649,
			"original_language": "en",
			"original_title": "Spider-Man: No Way Home",
			"overview": "Peter Parker é desmascarado e não consegue mais separar sua vida normal dos grandes riscos de ser um super-herói. Quando ele pede ajuda ao Doutor Estranho, os riscos se tornam ainda mais perigosos, e o forçam a descobrir o que realmente significa ser o Homem-Aranha.",
			"popularity": 5874.67,
			"poster_path": "/fVzXp3NwovUlLe7fvoRynCmBPNc.jpg",
			"release_date": "2021-12-15",
			"title": "Homem-Aranha: Sem Volta Para Casa",
			"video": false,
			"vote_average": 8.4,
			"vote_count": 4367
		},
		{
			"adult": false,
			"backdrop_path": "/yfNbZ34Yt2S0DdgGH38bLDhJPiM.jpg",
			"genre_ids": [
				28,
				53
			],
			"id": 860623,
			"original_language": "en",
			"original_title": "Last Man Down",
			"overview": "Depois que a civilização sucumbe a uma pandemia mortal e sua esposa é assassinada, um soldado das forças especiais abandona seu dever e se torna um eremita na selva nórdica. Anos depois, uma mulher ferida aparece em sua porta. Ela escapou de um laboratório e seus perseguidores acreditam que seu sangue é a chave para uma cura mundial. Ele hesita em se envolver, mas todas as dúvidas são deixadas de lado quando ele descobre que seu perseguidor não é outro senão o comandante Stone, o homem que assassinou sua esposa alguns anos atrás.",
			"popularity": 3559.395,
			"poster_path": "/zBQFWjOIE3hoYCG67Y3VVaSnLyc.jpg",
			"release_date": "2021-10-19",
			"title": "Pandemia: A Guerra Final",
			"video": false,
			"vote_average": 6.8,
			"vote_count": 129
		},
		{
			"adult": false,
			"backdrop_path": "/o76ZDm8PS9791XiuieNB93UZcRV.jpg",
			"genre_ids": [
				27,
				28,
				878
			],
			"id": 460458,
			"original_language": "en",
			"original_title": "Resident Evil: Welcome to Raccoon City",
			"overview": "O que já foi um dia a casa da gigante farmacêutica em expansão Umbrella Corporation, Raccoon City, é agora uma cidade agonizante do meio-oeste. O êxodo da empresa transformou a cidade em um deserto, com um grande mal fermentando escondido abaixo da superfície. Quando esse mal é libertado, um grupo de sobreviventes deve trabalhar juntos para descobrir a verdade por trás da Umbrella enquanto buscam viver por mais uma noite.",
			"popularity": 3107.294,
			"poster_path": "/tnKi8Vx9mRvOGrmzBOOh5wHEbQI.jpg",
			"release_date": "2021-11-24",
			"title": "Resident Evil: Bem-Vindo a Raccoon City",
			"video": false,
			"vote_average": 6.1,
			"vote_count": 936
		},
		{
			"adult": false,
			"backdrop_path": "/eNI7PtK6DEYgZmHWP9gQNuff8pv.jpg",
			"genre_ids": [
				878,
				28,
				12
			],
			"id": 624860,
			"original_language": "en",
			"original_title": "The Matrix Resurrections",
			"overview": "Em um mundo de duas realidades — a vida cotidiana e o que está por trás dela —, Thomas Anderson terá que escolher seguir o coelho branco mais uma vez. A escolha, embora seja uma ilusão, ainda é a única maneira de entrar ou sair da Matrix, que é mais forte, mais segura e mais perigosa do que nunca.",
			"popularity": 2920.594,
			"poster_path": "/9DT4WVqZqBEI9Kub18gZ3m1D89m.jpg",
			"release_date": "2021-12-16",
			"title": "Matrix Resurrections",
			"video": false,
			"vote_average": 6.9,
			"vote_count": 2346
		},
		{
			"adult": false,
			"backdrop_path": "/vIgyYkXkg6NC2whRbYjBD7eb3Er.jpg",
			"genre_ids": [
				878,
				28,
				12
			],
			"id": 580489,
			"original_language": "en",
			"original_title": "Venom: Let There Be Carnage",
			"overview": "Em busca de seu próximo furo de reportagem, o jornalista Eddie Brock consegue uma entrevista exclusiva com Cletus Kasady, um assassino no corredor da morte, que descobre o segredo de Eddie e se torna o hospedeiro de Carnificina, um simbionte aterrorizante e ameaçador. Eddie e Venom precisam superar sua relação atribulada e trabalhar em conjunto para derrotar Carnificina.",
			"popularity": 2444.605,
			"poster_path": "/h5UzYZquMwO9FVn15R2eK2itmHu.jpg",
			"release_date": "2021-09-30",
			"title": "Venom: Tempo de Carnificina",
			"video": false,
			"vote_average": 7.1,
			"vote_count": 5911
		},
		{
			"adult": false,
			"backdrop_path": "/8jIRAV5KVZeIP6tjI1NuCfb9Il0.jpg",
			"genre_ids": [
				28,
				12,
				14
			],
			"id": 566525,
			"original_language": "en",
			"original_title": "Shang-Chi and the Legend of the Ten Rings",
			"overview": "Shang-Chi precisa confrontar o passado que pensou ter deixado para trás. Ao mesmo tempo, ele é envolvido em uma teia de mistérios da organização conhecida como Dez Anéis.",
			"popularity": 1643.61,
			"poster_path": "/ArrOBeio968bUuUOtEpKa1teIh4.jpg",
			"release_date": "2021-09-01",
			"title": "Shang-Chi e a Lenda dos Dez Anéis",
			"video": false,
			"vote_average": 7.8,
			"vote_count": 5227
		},
		{
			"adult": false,
			"backdrop_path": "/mo57hzhW3BcZL1f7MNteWKHsmlN.jpg",
			"genre_ids": [
				28,
				53
			],
			"id": 763788,
			"original_language": "en",
			"original_title": "Dangerous",
			"overview": "Um sociopata reformado vai para uma ilha remota após a morte de seu irmão. Logo após sua chegada, a ilha cai sob o cerco de uma gangue mortal de mercenários, e quando ele descobre seu papel na morte de seu irmão, ele parte em uma busca implacável por vingança.",
			"popularity": 1622.529,
			"poster_path": "/vTtkQGC7qKlSRQJZYtAWAmYdH0A.jpg",
			"release_date": "2021-11-05",
			"title": "Dangerous",
			"video": false,
			"vote_average": 6.7,
			"vote_count": 115
		},
		{
			"adult": false,
			"backdrop_path": "/dK12GIdhGP6NPGFssK2Fh265jyr.jpg",
			"genre_ids": [
				28,
				35,
				80,
				53
			],
			"id": 512195,
			"original_language": "en",
			"original_title": "Red Notice",
			"overview": "No mundo do crime internacional, a INTERPOL lança um Alerta Vermelho, o que inicia uma caçada para capturar a mais notória ladra de artes do globo.",
			"popularity": 1349.437,
			"poster_path": "/pe17f8VDfzbvbHSAKAlcORtBHmW.jpg",
			"release_date": "2021-11-04",
			"title": "Alerta Vermelho",
			"video": false,
			"vote_average": 6.8,
			"vote_count": 2724
		},
		{
			"adult": false,
			"backdrop_path": "/xPpXYnCWfjkt3zzE0dpCNME1pXF.jpg",
			"genre_ids": [
				16,
				28,
				12,
				14
			],
			"id": 635302,
			"original_language": "ja",
			"original_title": "劇場版「鬼滅の刃」無限列車編",
			"overview": "Tanjiro Kamado, junto com Inosuke Hashibira, um garoto criado por javalis que usa uma cabeça de javali, e Zenitsu Agatsuma, um garoto assustado que revela seu verdadeiro poder quando dorme, embarca no Trem Infinito em uma nova missão com o Hashira de Fogo, Kyojuro Rengoku, para derrotar um demônio que tem atormentado o povo e matado os caçadores de oni que se opõem a ele!",
			"popularity": 1277.501,
			"poster_path": "/yaX5hliSF1rwZ9WVNbUchndjFSb.jpg",
			"release_date": "2020-10-16",
			"title": "Demon Slayer - Mugen Train: O Filme",
			"video": false,
			"vote_average": 8.4,
			"vote_count": 2047
		},
		{
			"adult": false,
			"backdrop_path": "/srDyClcl2J0L3ZP9tpahwoTcNxj.jpg",
			"genre_ids": [
				28,
				53,
				80
			],
			"id": 787310,
			"original_language": "en",
			"original_title": "Survive the Game",
			"overview": "Quando o policial David é ferido em uma apreensão de drogas que deu errado, seu parceiro Cal persegue os dois criminosos que atiraram nele. Todos eles pousam em uma fazenda remota de propriedade do veterinário Eric, e enquanto Cal e Eric planejam sua defesa, mais membros da gangue chegam – junto com David ferido. Em menor número, os três heróis devem usar furtividade, inteligência e bom tiro para derrubar a multidão de traficantes de drogas.",
			"popularity": 1235.443,
			"poster_path": "/8QUCf9e4sCsTbgy1TQpgcTHaVQA.jpg",
			"release_date": "2021-10-08",
			"title": "Sobreviva ao Jogo",
			"video": false,
			"vote_average": 5.8,
			"vote_count": 81
		},
		{
			"adult": false,
			"backdrop_path": "/1BqX34aJS5J8PefVnQSfQIEPfkl.jpg",
			"genre_ids": [
				80,
				28,
				53
			],
			"id": 826749,
			"original_language": "en",
			"original_title": "Fortress",
			"overview": "A história gira em torno de um resort ultrassecreto para oficiais de inteligência aposentados dos EUA. Um grupo de criminosos liderados por Balzary rompeu o complexo, infernalmente se vingou de Robert, forçando o oficial aposentado e seu filho a salvar o dia.",
			"popularity": 1060.68,
			"poster_path": "/hYi00SLc8v92h5i4MoluCvIwLG1.jpg",
			"release_date": "2021-12-17",
			"title": "A Fortaleza",
			"video": false,
			"vote_average": 6.3,
			"vote_count": 121
		},
		{
			"adult": false,
			"backdrop_path": "/sLWUtbrpiLp23a0XDSiUiltdFPJ.jpg",
			"genre_ids": [
				28,
				12,
				14
			],
			"id": 1930,
			"original_language": "en",
			"original_title": "The Amazing Spider-Man",
			"overview": "Peter Parker está tentando saber mais sobre sua origem. Ele encontra uma pasta que pertenceu ao seu pai e quer descobrir por que seus pais desapareceram. Sua busca o leva a Oscorp e ao dr. Curt Connors, que tem como alterego o letal Lagarto.",
			"popularity": 885.184,
			"poster_path": "/dODKvv9o9BOemWavnulutJBHM80.jpg",
			"release_date": "2012-06-23",
			"title": "O Espetacular Homem-Aranha",
			"video": false,
			"vote_average": 6.6,
			"vote_count": 14314
		},
		{
			"adult": false,
			"backdrop_path": "/8Y43POKjjKDGI9MH89NW0NAzzp8.jpg",
			"genre_ids": [
				35,
				28,
				12,
				878
			],
			"id": 550988,
			"original_language": "en",
			"original_title": "Free Guy",
			"overview": "Um caixa de banco preso a uma entediante rotina tem sua vida virada de cabeça para baixo quando ele descobre que é personagem em um brutalmente realista vídeo game de mundo aberto. Agora ele precisa aceitar sua realidade e lidar com o fato de que é o único que pode salvar o mundo.",
			"popularity": 726.073,
			"poster_path": "/jXlGeLOg2RKHmV9CinVaIB4ijKU.jpg",
			"release_date": "2021-08-11",
			"title": "Free Guy: Assumindo o Controle",
			"video": false,
			"vote_average": 7.7,
			"vote_count": 4643
		},
		{
			"adult": false,
			"backdrop_path": "/u7SeO6Y42P7VCTWLhpnL96cyOqd.jpg",
			"genre_ids": [
				28,
				12,
				14
			],
			"id": 102382,
			"original_language": "en",
			"original_title": "The Amazing Spider-Man 2",
			"overview": "O jovem Peter Parker está fascinado com as habilidades que adquiriu como Homem-Aranha. Agora, ele precisa lidar com dois problemas: o retorno de um velho amigo, Harry Osborn, e a chegada de um vilão mais forte e poderoso, Electro.",
			"popularity": 703.774,
			"poster_path": "/lDbcaBs1IdBZccCM1R417XmPxKF.jpg",
			"release_date": "2014-04-16",
			"title": "O Espetacular Homem-Aranha 2: A Ameaça de Electro",
			"video": false,
			"vote_average": 6.5,
			"vote_count": 10518
		},
		{
			"adult": false,
			"backdrop_path": "/tTlAA0REGPXSZPBfWyTW9ipIv1I.jpg",
			"genre_ids": [
				28,
				12,
				878,
				18
			],
			"id": 315635,
			"original_language": "en",
			"original_title": "Spider-Man: Homecoming",
			"overview": "Depois de atuar ao lado dos Vingadores, chegou a hora do pequeno Peter Parker (Tom Holland) voltar para casa e para a sua vida, já não mais tão normal. Lutando diariamente contra pequenos crimes nas redondezas, ele pensa ter encontrado a missão de sua vida quando o terrível vilão Abutre (Michael Keaton) surge amedrontando a cidade. O problema é que a tarefa não será tão fácil como ele imaginava.",
			"popularity": 695.125,
			"poster_path": "/9Fgs1ewIZiBBTto1XDHeBN0D8ug.jpg",
			"release_date": "2017-07-05",
			"title": "Homem-Aranha: De Volta ao Lar",
			"video": false,
			"vote_average": 7.4,
			"vote_count": 17867
		},
		{
			"adult": false,
			"backdrop_path": "/7w06baRS9VPm5RYz8lawTCLiR4j.jpg",
			"genre_ids": [
				28,
				18,
				80
			],
			"id": 592508,
			"original_language": "hi",
			"original_title": "Sooryavanshi",
			"overview": "Leal, destemido e um tanto esquecido, um policial de Mumbai faz de tudo para impedir um grande ataque à cidade.",
			"popularity": 687.573,
			"poster_path": "/1vuix8r1CJ2M6IldR27Z95hWm7e.jpg",
			"release_date": "2021-11-05",
			"title": "Sooryavanshi",
			"video": false,
			"vote_average": 5.9,
			"vote_count": 71
		},
		{
			"adult": false,
			"backdrop_path": "/r2GAjd4rNOHJh6i6Y0FntmYuPQW.jpg",
			"genre_ids": [
				12,
				28,
				53
			],
			"id": 370172,
			"original_language": "en",
			"original_title": "No Time to Die",
			"overview": "Bond deixou o serviço ativo e está desfrutando de uma vida tranquila na Jamaica. Sua paz é interrompida quando o seu velho amigo Felix Leiter, da CIA, aparece pedindo sua ajuda. A missão de resgatar um cientista sequestrado acaba sendo muito mais difícil do que o esperado, deixando Bond no caminho de um vilão misterioso e armado com uma nova tecnologia perigosa.",
			"popularity": 684.577,
			"poster_path": "/luE0KG1rWfUptbgNtlNtL5sihyd.jpg",
			"release_date": "2021-09-29",
			"title": "007: Sem Tempo para Morrer",
			"video": false,
			"vote_average": 7.5,
			"vote_count": 3216
		},
		{
			"adult": false,
			"backdrop_path": "/jlGmlFOcfo8n5tURmhC7YVd4Iyy.jpg",
			"genre_ids": [
				28,
				12,
				14
			],
			"id": 436969,
			"original_language": "en",
			"original_title": "The Suicide Squad",
			"overview": "Os supervilões Harley Quinn, Bloodsport, Peacemaker e uma coleção de malucos condenados da prisão de Belle Reve juntam-se à super-secreta e super-obscura Força Tarefa X, enquanto são deixados na remota ilha de Corto Maltese para combater o inimigo.",
			"popularity": 632.319,
			"poster_path": "/wTS3dS2DJiMFFgqKDz5fxMTri.jpg",
			"release_date": "2021-07-28",
			"title": "O Esquadrão Suicida",
			"video": false,
			"vote_average": 7.7,
			"vote_count": 5321
		},
		{
			"adult": false,
			"backdrop_path": "/ng6SSB3JhbcpKTwbPDsRwUYK8Cq.jpg",
			"genre_ids": [
				28,
				12,
				878
			],
			"id": 429617,
			"original_language": "en",
			"original_title": "Spider-Man: Far From Home",
			"overview": "Peter Parker está em uma viagem de duas semanas pela Europa, ao lado de seus amigos de colégio, quando é surpreendido pela visita de Nick Fury. Convocado para mais uma missão heroica, ele precisa enfrentar vários vilões que surgem em cidades-símbolo do continente, como Londres, Paris e Veneza, e também a aparição do enigmático Mysterio.",
			"popularity": 584.288,
			"poster_path": "/tX0o4AdHpidgniTWwfzK0dNTKrc.jpg",
			"release_date": "2019-06-28",
			"title": "Homem-Aranha: Longe de Casa",
			"video": false,
			"vote_average": 7.5,
			"vote_count": 11816
		}
	],
	"total_pages": 1561,
	"total_results": 31211
}
''';
