import 'package:challenge_cubos/presenter/components/movie.card.dart';
import 'package:challenge_cubos/presenter/components/movie_tab_bar.dart';
import 'package:challenge_cubos/presenter/components/search_movie_bar.dart';
import 'package:challenge_cubos/presenter/controller/home_controller.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        minimum:
            const EdgeInsets.only(top: 48, right: 20, left: 20, bottom: 57),
        bottom: true,
        top: true,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Filmes', style: Theme.of(context).textTheme.headline1),
            const SearchMovieBar(),
            Wrap(
              spacing: 12,
              children: List.generate(movieGender.length,
                  (index) => MovieTabBar(movieGender: movieGender[index])),
            ),
            const SizedBox(
              height: 16,
            ),
            Expanded(
              child: ListView.separated(
                  itemBuilder: (context, index) {
                    return const MovieCard();
                  },
                  separatorBuilder: (context, index) {
                    return const Divider();
                  },
                  itemCount: 10),
            )
          ],
        ),
      ),
    );
  }
}
