import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'injection_container.dart' as di;

import 'my_app.dart';

void main() async {
  await di.init();
  await dotenv.load(fileName: '.env');
  runApp(const MyApp());
}
