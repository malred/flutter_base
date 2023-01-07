import 'package:flutter/material.dart';
import './pages/index.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Index(),
      // 隐藏右上角的debug图标
      debugShowCheckedModeBanner: false,
    );
  }
}
