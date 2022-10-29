import 'package:flutter/material.dart';
import 'package:meals_app/REUSABLECARD.dart';
import 'package:meals_app/Constants.dart';
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  Constants consta=Constants();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: SafeArea(child: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/aditya.jpg'),
                  ),
                  SizedBox(width: 10.0,),
                  Text('Welcome,User!',
                  style:
                  TextStyle
                    (
                    fontWeight: FontWeight.w900,
                    fontSize: 30.0,
                  ),),
                ],
              ),

            ),
            SizedBox(height: 50.0,),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('About Us',style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                ),
                SizedBox(width: 10.0,),
                GestureDetector(onTap: ()
                {
                  Navigator.pushNamed(context, '/about');
                },
                child: Icon(Icons.info),

                ),

              ],
            ),


          ],
        ),
      ),),
    appBar: AppBar(
    title: Text('YUMMY'),
    iconTheme: IconThemeData(color: Colors.black),
    ),
      body:
      Column(
        children: [
          Expanded(
            flex: 10,
            child: Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: GridView(gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 400,
                childAspectRatio: 2,
                crossAxisSpacing: 20.0,
                mainAxisSpacing: 15.0,
              ),
              children:
                consta.categories,


              ),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                consta.icons[0],
                consta.icons[1],
                GestureDetector(
                    onTap: (){Navigator.pushNamed(context,'/screen2');},
                    child: Icon(Icons.newspaper_outlined)),
                Icon(Icons.settings),

              ],


            ),
          ),
        ],
      ),
    );
  }
}
