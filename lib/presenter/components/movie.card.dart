import 'package:challenge_cubos/data/models/genrer_list.dart';
import 'package:challenge_cubos/presenter/pages/movie_details_page.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final double? height;
  final String imgUrl;
  final String title;
  final List<Genres> genres;
  final String overView;
  final String originalTitle;

  const MovieCard({
    Key? key,
    this.height,
    required this.imgUrl,
    required this.title,
    required this.genres,
    required this.overView,
    required this.originalTitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        height ??
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => MovieDetailsPage(
                        originalTitle: originalTitle,
                        genres: genres,
                        imgUrl: imgUrl,
                        title: title,
                        overView: overView)));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        height: height ?? 470,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.grey,
            borderRadius: BorderRadius.circular(10),
            image: DecorationImage(
                fit: BoxFit.cover, image: NetworkImage(imgUrl))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              title,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              'Ação - Aventura',
              style: Theme.of(context).textTheme.subtitle2,
            ),
          ],
        ),
      ),
    );
  }
}
