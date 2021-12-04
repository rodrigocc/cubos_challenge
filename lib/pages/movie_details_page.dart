import 'package:challenge_cubos/components/custom_app_bar.dart';
import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class MovieDetailsPage extends StatelessWidget {
  const MovieDetailsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 48, 20, 0),
      decoration: const BoxDecoration(color: ThemeColors.gray9),
      child: Column(
        children: const [
          CustomAppBar(),
        ],
      ),
    );
  }
}
