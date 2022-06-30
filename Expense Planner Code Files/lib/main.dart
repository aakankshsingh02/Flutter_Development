import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyWidget(),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter App"),
        ),
        body: Column(
          children: <Widget>[
            Card(
              color: Colors.blue,
              // ignore: sort_child_properties_last
              child: Container(width: 100, child: const Text("Chart")),
              elevation: 5,
            ),
            const Card(
              child: Text("List of TX"),
            )
          ],
        ));
  }
}
