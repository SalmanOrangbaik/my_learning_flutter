// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_learning/container/dua.dart';
import 'package:my_learning/main_layout.dart';

class ContainerTiga extends StatelessWidget {
  const ContainerTiga({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: 'Container 3',
        body: Center(
          child: Container(
            width: 500,
            height: 500,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [Colors.red, Colors.black, Colors.red],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
            child: Container(
              margin: EdgeInsets.all(70),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.blueAccent, Colors.black, Colors.blueAccent],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
              child: Container(
                margin: EdgeInsets.all(80),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  gradient: LinearGradient(
                    colors: [Colors.cyan, Colors.black, Colors.cyan],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Center(
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ContainerDua()));
                      },
                      child: Text("Pindah Ke Container 2")),
                ),
              ),
            ),
          ),
        ));
  }
}
