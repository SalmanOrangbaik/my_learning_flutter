// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_learning/main_layout.dart';

class ColumnSatu extends StatelessWidget {
  const ColumnSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Column',
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text('Widget Text 1'),
          Text('Widget Text 2'),
          Text('Widget Text 3'),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Row Widget 1'),
              Text('Row Widget 2'),
              Text('Row Widget 3'),
            ],
          )
        ],
      ),
    );
  }
}
