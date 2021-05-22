import 'package:flutter/material.dart';
import 'package:flutter_view_model_test/counter_view.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CounterView(),
      
    );
  }
}