import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class MovieTabBar extends StatefulWidget {
  final String movieGender;
  const MovieTabBar({Key? key, required this.movieGender}) : super(key: key);

  @override
  MovieTabBarState createState() => MovieTabBarState();
}

class MovieTabBarState extends State<MovieTabBar> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
          padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
          decoration: BoxDecoration(
              color: ThemeColors.green1,
              borderRadius: BorderRadius.circular(25),
              border: Border.all(color: ThemeColors.gray8)),
          child: Text(
            widget.movieGender,
            style: const TextStyle(
              color: Colors.white,
            ),
          )),
    );
  }
}
