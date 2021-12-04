import 'package:challenge_cubos/components/ui/custom_box.dart';
import 'package:challenge_cubos/pages/movie_details_page.dart';
import 'package:flutter/material.dart';

class MovieCard extends StatelessWidget {
  final double? height;
  const MovieCard({Key? key, this.height}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        height ??
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const MovieDetailsPage()));
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        height: height ?? 470,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.grey,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Text(
              'CAPITÃ MARVEL',
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
