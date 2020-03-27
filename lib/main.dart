import 'package:flutter/material.dart';
import 'package:martinsmiguel/locator.dart';
import 'package:martinsmiguel/views/layout/layout_template.dart';

void main() { 
  setupLocator();
  runApp(MyApp()); 
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter The Basics',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans'
        )
      ),
      home: LayoutTemplate(),
    );
  }
}
