 
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});
  late Box box1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Flutter App"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () async {
                box1 = await Hive.openBox("Box 1");
              },
              child: Text("Open")),
          ElevatedButton(
              onPressed: () {
                box1.put("N1", "Mohamed");
                box1.put("N2", "Mohamed2");
                box1.put("N3", "Mohamed3");
              },
              child: Text("Add")),
          ElevatedButton(
              onPressed: () {
                for (var i = 0; i < box1.length; i++) {
                  print(box1.getAt(i));
                }
              },
              child: Text("Display")),
          const Center(
            child: Text(
              'Hello, Flutter!',
              style: TextStyle(fontSize: 24),
            ),
          ),
        ],
      ),
    );
  }
}
