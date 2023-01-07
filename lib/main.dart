import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project/utils/Global.dart';
import 'package:provider/provider.dart';

import './pages/index.dart';
import './provider/CurrentIndexProvider.dart';
import 'routes/Routes.dart';

void main() {
  // 初始化路由
  FluroRouter router = new FluroRouter();
  Routes.configureRoutes(router);
  // 初始化路由放到全局组件中
  G.router = router;
  runApp(
    // 添加全局状态(可多个)
    MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: CurrentIndexProvider(),
        ),
      ],
      child: const MyApp(),
    ),
  );
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
      onGenerateRoute: G.router!.generator,
      initialRoute: '/',
    );
  }
}
