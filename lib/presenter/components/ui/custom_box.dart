import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomBox extends StatelessWidget {
  final Widget? child;
  final double? width;
  final CustomBoxType boxType;
  const CustomBox({Key? key, this.child, required this.boxType, this.width})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      padding: boxType == CustomBoxType.genrer
          ? const EdgeInsets.fromLTRB(10, 6, 10, 7)
          : const EdgeInsets.fromLTRB(16, 8, 16, 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: boxType == CustomBoxType.genrer
            ? Border.all(
                style: BorderStyle.solid, width: 1, color: ThemeColors.boxColor)
            : null,
        color:
            boxType == CustomBoxType.genrer ? Colors.white : ThemeColors.gray8,
      ),
      child: child,
    );
  }
}

enum CustomBoxType {
  genrer,
  description,
}
