import 'package:challenge_cubos/presenter/pages/home_page.dart';

import 'package:challenge_cubos/themes/theme.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cubos Challenge',
      theme: theme,
      home: const MyHomePage(),
    );
  }
}
