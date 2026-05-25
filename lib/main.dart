import 'package:flutter/material.dart';

import 'utilities/theme.dart';
import 'news_list_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter News App',
      theme: appTheme,
      home: const NewsListScreen(),
    );
  }
}
