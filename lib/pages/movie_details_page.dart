import 'package:challenge_cubos/components/custom_app_bar.dart';
import 'package:challenge_cubos/components/movie.card.dart';
import 'package:challenge_cubos/components/ui/custom_box.dart';
import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 48, 20, 0),
      decoration: const BoxDecoration(color: ThemeColors.gray9),
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
          const Text(
            'Título Original: Captain Marvel',
            style: TextStyle(fontSize: 10),
          ),
          CustomBox(
            child: Text(
              'Ano : 2019',
              style: Theme.of(context)
                  .textTheme
                  .subtitle1!
                  .copyWith(color: ThemeColors.gray1),
            ),
          ),
          Align(
            child:
                Text('Descrição', style: Theme.of(context).textTheme.headline2),
            alignment: Alignment.centerLeft,
          ),
          Text(
              'Aventura sobre Carol Danvers, uma agente da CIA que tem contato com uma raça alienígena e ganha poderes sobre-humanos. Entre os seus poderes estão uma força fora do comum e a habilidade de voar',
              style: Theme.of(context).textTheme.bodyText1)
        ],
      ),
    );
  }
}
