import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import '../../data/models/movie_list.dart';
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
              return FutureBuilder<List<MovieResults>>(
                  future: controller.fetchMovieByGenrer(controller.genrerId),
                  builder: (context, snapshot) {
                    if (!snapshot.hasData) {
                      return const Expanded(
                        child: Align(
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(),
                        ),
                      );
                    }

                    return Expanded(
                      child: ListView.separated(
                          itemBuilder: (context, index) {
                            return MovieCard(
                                originalTitle:
                                    snapshot.data![index].originalTitle!,
                                title: snapshot.data![index].title!,
                                genres: const [],
                                overView: snapshot.data![index].overview!,
                                imgUrl: controller.fetchImageCard(
                                    snapshot.data![index].posterPath!));
                          },
                          separatorBuilder: (context, index) {
                            return const Divider(
                              color: Colors.transparent,
                            );
                          },
                          itemCount: snapshot.data!.length),
                    );
                  });
            })
          ],
        ),
      ),
    );
  }
}
