import 'package:flutter/material.dart';
class Reusable extends StatelessWidget {
Reusable(this.name,this.cardcolor);
final String name;
final Color cardcolor;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: cardcolor,
      ),

      child: GestureDetector(
        onTap:() {
          print('tapped');
        },
        child: Padding(
          padding: const EdgeInsets.only(left: 5.0,top: 5.0),
          child: Text(name,style: TextStyle(fontSize: 25.0),),
        ),
      ),
    );
  }
}
