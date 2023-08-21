import 'package:flutter/material.dart';
import 'package:foodapp/pages/splash_screen.dart';
import 'package:foodapp/utils/theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: buildThemeData(),
      home: const SafeArea(
        child: SplashPage(),
      ),
    );
  }
}
