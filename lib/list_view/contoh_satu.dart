// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_learning/main_layout.dart';

class ListViewSatu extends StatelessWidget {
  const ListViewSatu({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'List View Basic',
      body: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            color: Colors.deepPurpleAccent[100],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.cyanAccent[200],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.black,
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.deepPurple[400],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          ),
          Container(
            color: Colors.red[500],
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            child: FlutterLogo(),
          )
        ],
      ),
    );
  }
}
