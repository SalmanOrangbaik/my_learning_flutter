// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_learning/container/dua.dart';
import 'package:my_learning/container/satu.dart';
import 'package:my_learning/container/tiga.dart';
import 'package:my_learning/row_column/column_satu.dart';
import 'package:my_learning/row_column/latihan.dart';
import 'package:my_learning/row_column/row_column.dart';
import 'package:my_learning/row_column/row_satu.dart';

void main() {
  runApp(BelajarFlutter());
}

class BelajarFlutter extends StatelessWidget {
  const BelajarFlutter({super.key});
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Latihan(),
    );
  }
}

class HelloFLutter extends StatelessWidget {
  const HelloFLutter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text('Hello Flutter', style: TextStyle(
        color: Colors.amberAccent,
        fontSize: 24,
        fontWeight: FontWeight.bold,
        backgroundColor: Colors.blueGrey, 
      ),),
    );
  }
}
