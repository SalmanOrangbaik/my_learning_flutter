// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_learning/main_layout.dart';

class ListViewTiga extends StatelessWidget {
   ListViewTiga({super.key});

  //data
  final List<Color> colorlist = [Colors.red, Colors.green, Colors.blue];
  final List<String> partaiList = [
    'Partai Banteng',
    'Partai Kabah',
    'Partai Joged',
  ];

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Contoh List View Builder',
      body: SizedBox(
        width: double.infinity,
        height: 200,
        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: colorlist.length,
            itemBuilder: (contex, index) {
              return Container(
                margin: EdgeInsets.all(10),
                width: 200,
                height: 300,
                color: colorlist[index],
                child: Text(partaiList[index]),
              );
            }),
      ),
    );
  }
}
