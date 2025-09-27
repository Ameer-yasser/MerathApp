import 'package:flutter/material.dart';

void main() {
  runApp(const Page2());
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState()=> _Page2State();

  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Page2(),
    );
  }
}

  class _Page2State extends State<Page2> {

  String TextInput = '';

    @override
    Widget build(BuildContext context) {
      return Scaffold(

          appBar: AppBar(title: Text('Enter')),

        body: Padding(
          padding: const EdgeInsets.all(16.0), // add spacing around the row
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              // First textbox
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Property",
                    border: OutlineInputBorder(), // visible border
                  ),

                    onChanged: (value){
                      setState(() {

                        TextInput = value;

                      });


                    }

                ),
              ),

              const SizedBox(width: 16), // spacing between the two textboxes

              // Second textbox
              Expanded(
                child: TextFormField(
                  decoration: const InputDecoration(
                    hintText: "Enter Price",
                    border: OutlineInputBorder(),
                  ),



                ),

              ),

              Container(
                width: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                 Text('Text: $TextInput'),
               ],
             ),
              )
            ],

          ),

        ),
      );


    }
  }













