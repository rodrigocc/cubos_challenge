import 'package:challenge_cubos/components/movie_tab_bar.dart';
import 'package:flutter/material.dart';

import 'components/search_movie_bar.dart';
import 'controller/home_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            const Text('Filmes',
                style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w600,
                    fontStyle: FontStyle.normal)),
            const SearchMovieBar(),
            Wrap(
              children: List.generate(movieGender.length,
                  (index) => MovieTabBar(movieGender: movieGender[index])),
            ),
          ],
        ),
      ),
    );
  }
}
