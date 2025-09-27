import 'package:flutter/material.dart';

import 'package:firstflutterapp/Page2.dart';


void main() => runApp(MaterialApp(

  home: Home(),

));

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        title: Text(
            "SmartMerath",

          style: TextStyle(
          fontSize: 44.0,
          fontWeight: FontWeight.bold,


        ),


        ),
        centerTitle: true,
      ),




      body: Center(
        child: ElevatedButton.icon(
            onPressed: () {

              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>
                      Page2())
              );
            },


            label: Text("Start"),

            style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),



            icon: Icon(
                Icons.mail
            )
        ),

      ),



    );
  }
}


