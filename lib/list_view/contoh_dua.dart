import 'package:flutter/material.dart';
import 'package:my_learning/main_layout.dart';

class ListViewDua extends StatelessWidget {
  const ListViewDua({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Contoh List View Builder',
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            width: 200,
            height: 200,
            margin: EdgeInsets.all(10),
            color: Colors.purple[(index + 1) * 100],
            child: FlutterLogo(),
          );
        }),
    );
  }
}