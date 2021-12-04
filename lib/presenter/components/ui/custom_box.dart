import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final Widget? child;
  final CustomBoxType boxType;
  const CustomBox({Key? key, this.child, required this.boxType})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: boxType == CustomBoxType.genrer
          ? const EdgeInsets.fromLTRB(10, 6, 10, 7)
          : const EdgeInsets.fromLTRB(16, 8, 16, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: boxType == CustomBoxType.genrer
            ? ThemeColors.boxColor
            : ThemeColors.gray8,
      ),
      child: child,
    );
  }
}

enum CustomBoxType {
  genrer,
  description,
}
