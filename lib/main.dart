import 'package:flutter/material.dart';
import 'package:pet_shop_ui/views/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pet Shop UI',
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
      theme: ThemeData(useMaterial3: true),
    );
  }
}
