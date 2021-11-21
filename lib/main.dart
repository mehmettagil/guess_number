import 'package:flutter/material.dart';
import 'package:guess_number/firstpage.dart';

import 'inputpage.dart';

void main() {
  runApp(const GuessApp());
}
class GuessApp extends StatelessWidget {
  const GuessApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FirstPage(),
    );
  }
}

