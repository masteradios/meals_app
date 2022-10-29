import 'package:flutter/material.dart';
import 'package:meals_app/REUSABLECARD.dart';
import 'main.dart';
class Constants
{
  List<Widget> categories=[
    Reusable('Asian',Colors.orange),
    Reusable('Indian',Colors.greenAccent),
    Reusable('ITALIAN',Colors.blueAccent),
    Reusable('CHINESE', Colors.pink),
    Reusable('CONTINENTAL', Colors.lime)



  ];
  List<Widget> icons=[
    Icon(Icons.home),
    Icon(Icons.search),


  ];


}