import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Root widget: wraps Page2 in MaterialApp
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const Page2(),
    );
  }
}

class Page2 extends StatefulWidget {
  const Page2({super.key});

  @override
  State<Page2> createState() => _Page2State();
}

class _Page2State extends State<Page2> {
  String TextInput = '';
  int Priceinput = 0;
  List<String> property = ["Car", "House", "Land"];
  List<int> Price = [50, 60, 90];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Enter')),

      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Row for textboxes
            Row(
              children: [
                // First textbox
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Property",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        TextInput = value;
                      });
                    },
                  ),
                ),

                const SizedBox(width: 16), // spacing

                // Second textbox
                Expanded(
                  child: TextFormField(
                    decoration: const InputDecoration(
                      hintText: "Enter Price",
                      border: OutlineInputBorder(),
                    ),
                    onChanged: (value) {
                      setState(() {
                        Priceinput = int.tryParse(value) ?? 0;
                      });
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16),

            // Row for the two listviews
            Expanded(
              child: Row(
                children: [
                  // Property list
                  Expanded(
                    child: ListView.builder(
                      itemCount: property.length,
                      itemBuilder: (context, index) {
                        return Card(
                          child: ListTile(
                            title:
                            Row(
                          children: [
                            Expanded(
                                 flex: 2,
                                child: Text(property[index]),
                            ),

                            Expanded(
                              flex: 1,
                              child: Text("Price: ${Price[index]}",
                                textAlign: TextAlign.right,
                                style: const TextStyle(fontWeight: FontWeight.bold),
                              ),


                            ),
                          ],
                            ),

                            trailing: IconButton(
                              icon: const Icon(Icons.delete),
                              onPressed: () {
                                setState(() {
                                  Price.removeAt(index);
                                  property.removeAt(index);
                                });
                              },
                            ),
                          ),
                        );
                      },
                    ),
                  ),

                ],
              ),
            ),
          ],
        ),
      ),

      // Floating add button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            property.add(TextInput);
            Price.add(Priceinput);
          });
        },
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}