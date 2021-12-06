import 'package:challenge_cubos/presenter/controller/tab_model.dart';
import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MovieTabBar extends StatefulWidget {
  final TabModel movieGenrer;
  final void Function()? onTap;
  const MovieTabBar({Key? key, required this.movieGenrer, this.onTap})
      : super(key: key);

  @override
  MovieTabBarState createState() => MovieTabBarState();
}

class MovieTabBarState extends State<MovieTabBar> {
  @override
  Widget build(BuildContext context) {
    return Observer(builder: (context) {
      return GestureDetector(
        onTap: widget.onTap,
        child: Container(
            padding: const EdgeInsets.fromLTRB(12, 8, 12, 8),
            decoration: BoxDecoration(
                color: widget.movieGenrer.selected
                    ? ThemeColors.green1
                    : Colors.white,
                borderRadius: BorderRadius.circular(25),
                border: widget.movieGenrer.selected
                    ? null
                    : Border.all(
                        color: ThemeColors.gray8,
                        style: BorderStyle.solid,
                        width: 1)),
            child: Text(widget.movieGenrer.genrerName,
                style: widget.movieGenrer.selected
                    ? Theme.of(context).textTheme.headline3!.copyWith(
                          fontSize: 14,
                          color: Colors.white,
                        )
                    : Theme.of(context).textTheme.headline3!.copyWith(
                          fontSize: 14,
                          color: ThemeColors.green1,
                        ))),
      );
    });
  }
}
