import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pop();
      },
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.8, 8, 13, 9),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(100)),
        child: Row(
          children: [
            const Icon(Icons.arrow_left),
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
    );
  }
}
