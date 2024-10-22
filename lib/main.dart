
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Row Example 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Row Example 1'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ExampleRow(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisText: 'MainAxisAlignment.start',
              crossAxisText: 'CrossAxisAlignment.start',
            ),
            ExampleRow(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisText: 'MainAxisAlignment.center',
              crossAxisText: 'CrossAxisAlignment.start',
            ),
            ExampleRow(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisText: 'MainAxisAlignment.end',
              crossAxisText: 'CrossAxisAlignment.start',
            ),
          ],
        ),
      ),
    );
  }
}

class ExampleRow extends StatelessWidget {
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final String mainAxisText;
  final String crossAxisText;

  ExampleRow({
    required this.mainAxisAlignment,
    required this.crossAxisAlignment,
    required this.mainAxisText,
    required this.crossAxisText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Row() Example',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              mainAxisAlignment: mainAxisAlignment,
              crossAxisAlignment: crossAxisAlignment,
              children: [
                Container(width: 50, height: 50, color: Colors.red),
                Container(width: 50, height: 50, color: Colors.green),
                Container(width: 50, height: 50, color: Colors.blue),
              ],
            ),
            Container(
              height: 200,
              color: Colors.grey[300],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(crossAxisText),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(mainAxisText),
            ),
          ],
        ),
      ),
    );
  }
}