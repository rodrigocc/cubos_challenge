import 'package:challenge_cubos/presenter/components/custom_app_bar.dart';
import 'package:challenge_cubos/presenter/components/movie.card.dart';
import 'package:challenge_cubos/presenter/components/ui/custom_box.dart';
import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 48, 20, 0),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const CustomAppBar(),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 52),
            child: MovieCard(
              height: 318,
            ),
          ),
          const Text(
            '7.3/10',
            style: TextStyle(
              fontSize: 24,
            ),
          ),
          Text(
            'CAPITÃ MARVEL',
            style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: ThemeColors.gray1,
                ),
          ),
          RichText(
              text: TextSpan(
                  style: Theme.of(context).textTheme.headline1,
                  text: 'Título original : ',
                  children: const [TextSpan(text: 'Captain Marvel')])),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomBox(
                boxType: CustomBoxType.description,
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline1,
                        text: 'Ano : ',
                        children: const [TextSpan(text: '2019')])),
              ),
              const SizedBox(
                width: 12,
              ),
              CustomBox(
                boxType: CustomBoxType.description,
                child: RichText(
                    text: TextSpan(
                        style: Theme.of(context).textTheme.headline1,
                        text: 'Duração : ',
                        children: const [TextSpan(text: '1h 20 min')])),
              ),
            ],
          ),
          Align(
            child:
                Text('Descrição', style: Theme.of(context).textTheme.headline2),
            alignment: Alignment.centerLeft,
          ),
          Text(
              'Aventura sobre Carol Danvers, uma agente da CIA que tem contato com uma raça alienígena e ganha poderes sobre-humanos. Entre os seus poderes estão uma força fora do comum e a habilidade de voar',
              style: Theme.of(context).textTheme.bodyText1),
          CustomBox(
              boxType: CustomBoxType.description,
              child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline1,
                      text: 'Orçamento :',
                      children: const [TextSpan(text: '152,000,000')]))),
          CustomBox(
              boxType: CustomBoxType.description,
              child: RichText(
                  text: TextSpan(
                      style: Theme.of(context).textTheme.headline1,
                      text: 'PRODUTORAS :',
                      children: const [TextSpan(text: 'Marvel studios')]))),
          Text(
            'Diretor',
            style: Theme.of(context).textTheme.headline2,
          ),
          Text(
            'Nomes',
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            'Elenco',
            style: Theme.of(context).textTheme.bodyText1,
          )
        ],
      ),
    );
  }
}
