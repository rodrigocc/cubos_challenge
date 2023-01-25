import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../injection_container.dart';
import '../../themes/colors.dart';
import '../components/movie.card.dart';
import '../components/movie_tab_bar.dart';
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

  @override
  void initState() {
    super.initState();
    fetchData();
  }

  Future<void> fetchData() async {
    await controller.fetchMovies(controller.genrerId);
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
            _buildSearchMovieBar(),
            // SearchMovieBar(
            //   homeController: controller,
            // ),
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
            // Observer(builder: (_) {
            //   return FutureBuilder<List<MovieResults>>(
            //       future: controller.fetchMovieByGenrer(controller.genrerId),
            //       builder: (context, snapshot) {
            //         if (!snapshot.hasData) {
            //           return const Expanded(
            //             child: Align(
            //               alignment: Alignment.center,
            //               child: CircularProgressIndicator(),
            //             ),
            //           );
            //         }

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
            })
          ],
        ),
      ),
    );
  }

  Widget _buildSearchMovieBar() {
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
                onChanged: (value) async {
                  await controller.searchMovies(value, controller.genrerId);
                },
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                    hintText: 'Pesquise filmes',
                    hintStyle: Theme.of(context).textTheme.headline2)),
          ),
        ],
      ),
    );
  }
}
