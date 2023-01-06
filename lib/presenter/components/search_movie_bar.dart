import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class SearchMovieBar extends StatefulWidget {
  const SearchMovieBar({Key? key}) : super(key: key);

  @override
  _SearchMovieBarState createState() => _SearchMovieBarState();
}

class _SearchMovieBarState extends State<SearchMovieBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
          color: ThemeColors.gray8, borderRadius: BorderRadius.circular(100)),
      width: double.infinity,
      height: 60,
      child: Row(
        children: [
          const Icon(
            Icons.search,
            size: 30,
            color: ThemeColors.gray2,
          ),
          const SizedBox(
            width: 16,
          ),
          SizedBox(
            width: 250,
            height: 40,
            child: TextField(
                decoration: InputDecoration(
                    hintText: 'Pesquise filmes',
                    hintStyle: Theme.of(context).textTheme.headline2)),
          ),
        ],
      ),
    );
  }
}
