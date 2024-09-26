import 'package:flutter/material.dart';

import 'home_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Course for beginners',
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
