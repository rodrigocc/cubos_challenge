import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../injection_container.dart';
import '../components/movie.card.dart';
import '../components/movie_tab_bar.dart';
import '../components/search_movie_bar.dart';
import '../controller/home_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final controller = getIt<HomeController>();
  final List<String> genrerList = [];
  final List<Object> test = [];

  @override
  void initState() {
    super.initState();
    fetchGenrerList();
    fetchData();
  }

  Future<void> fetchData() async {
    await controller.fetchMovies(controller.genrerId);
  }

  Future<void> fetchGenrerList() async {
    await controller.fetchGenrerList();
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
            // _buildSearchMovieBar(),
            SearchMovieBar(
              homeController: controller,
            ),
            Observer(builder: (_) {
              return Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: List.generate(
                  controller.movieGenrerList.length,
                  (index) => MovieTabBar(
                      onTap: () {
                        controller.setSelectedCardStatus(index);
                        controller.changeGenrerTab(
                            controller.movieGenrerList[index].genrerName);
                        setState(() {});
                      },
                      movieGenrer: controller.movieGenrerList[index]),
                ),
              );
            }),
            const SizedBox(
              height: 16,
            ),

            Observer(builder: (_) {
              return Expanded(
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      return MovieCard(
                          originalTitle:
                              controller.movies[index].originalTitle!,
                          title: controller.movies[index].title!,
                          genres: const [],
                          overView: controller.movies[index].overview!,
                          imgUrl: controller.fetchImageCard(
                              controller.movies[index].posterPath!));
                    },
                    separatorBuilder: (context, index) {
                      return const Divider(
                        color: Colors.transparent,
                      );
                    },
                    itemCount: controller.movies.length),
              );
            }),
          ],
        ),
      ),
    );
  }

  //  setMovieGenrerList() {
  //   final genrerIdMovieList = controller.movies[index].genreIds!;

  //   controller.genrerList
  //       .where((element) => element.id!.toString().contains(genrerIdMovieList.toString()));

  //   for (int index = 0; index < genrerIdMovieList.length - 1; index++) {
  //     if (genrerIdMovieList.contains(controller.genrerList[index].id)) {
  //       genrerList.add(controller.genrerList[index].name!).toList();
  //     }
  //   }
  // }
}
