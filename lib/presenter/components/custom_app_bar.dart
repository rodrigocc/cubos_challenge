import 'package:challenge_cubos/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pop();
        },
        child: Container(
          width: 100,
          padding: const EdgeInsets.fromLTRB(12.8, 8, 13, 9),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(100),
              border: Border.all(
                  style: BorderStyle.solid,
                  width: 1,
                  color: ThemeColors.borderColor),
              boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    color: Colors.white.withOpacity(0.1),
                    spreadRadius: -10)
              ]),
          child: Row(
            children: [
              const Icon(
                Icons.arrow_back_ios,
                size: 15,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                'Voltar',
                style: Theme.of(context).textTheme.button,
              )
            ],
          ),
        ),
      ),
    );
  }
}
