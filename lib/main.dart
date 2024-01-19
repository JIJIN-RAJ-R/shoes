import 'package:flutter/material.dart';
// import 'package:my_shoes/home.dart';
// import 'package:my_shoes/kappi.dart';
import 'package:my_shoes/screen.dart';

void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
    home: screen(),
    );
  }
}