import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final Widget? child;
  const CustomBox({Key? key, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ThemeColors.gray8,
      ),
      child: child,
    );
  }
}
