import 'package:challenge_cubos/themes/colors.dart';
import 'package:challenge_cubos/themes/theme.dart';
import 'package:flutter/material.dart';

import 'pages/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme,
      home: const MyHomePage(),
    );
  }
}
