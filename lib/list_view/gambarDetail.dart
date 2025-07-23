// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:my_learning/main_layout.dart';

class DetailGambar extends StatelessWidget {
  final String nama;
  final String genre;
  final String images;
  final String desc;

  DetailGambar(
      {required this.nama,
      required this.genre,
      required this.desc,
      required this.images});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
        title: nama,
        body: SafeArea(
            child: Container(
              color: Colors.indigoAccent,
          width: double.infinity,
          height: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 10),
              Center(child: Text("$nama - $genre"),),
              SizedBox(height: 10),
              Container(
                alignment: Alignment.bottomLeft,
                height: 650,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(image: AssetImage(images),
                  fit: BoxFit.cover,
                  )
                ),
              ),
              SizedBox(height: 10,),
              Container(height: 100, child: Text(desc),),
            ],
          ),
        )
        )
        )
        ;
  }
}
