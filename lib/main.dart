import 'package:flutter/material.dart';
import 'package:meals_app/Home.dart';
import 'package:meals_app/Screen2.dart';
import 'aboutpage.dart';
void main() {
  runApp(Meals());
}

class Meals extends StatelessWidget {
  const Meals({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MEALS APP',
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.pink,
        ),
      ),
      initialRoute: '/',
      routes: {
        '/':(context)=>Home(),
        '/screen2':(context)=>Screen2(),
        '/about':(context)=>About(),
      },
    );
  }
}
