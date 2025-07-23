// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_learning/list_view/gambarDetail.dart';
import 'package:my_learning/main_layout.dart';

class Gambar extends StatelessWidget {
  Gambar({super.key});

//data
  final List<Map<String, dynamic>> gambarData = [
    {
      "nama": "Komi Can't Communicate",
      "genre": "Romance",
      "images": "images/813vo6pZn7L._AC_UF1000,1000_QL80_.jpg",
      "desc": "bagus",
    },
    {
      "nama": "Komi Can't Communicate",
      "genre": "Romance",
      "images": "images/813vo6pZn7L._AC_UF1000,1000_QL80_.jpg",
      "desc": "bagus",
    },
    {
      "nama": "Buku Self Improvment",
      "genre": "non-fiction",
      "images": "images/9786230405198.jpeg",
      "desc": "bagus",
    },
    {
      "nama": "Buku Self Improvment",
      "genre": "non-fiction",
      "images": "images/Sebuah-seni-untuk-bersikap-bodoh-amat.jpg",
      "desc": "bagus",
    },
    {
      "nama": "Komik Tahilalats",
      "genre": "Komedi",
      "images": "images/9786025406614_Komik-Tahilalats-New-Edition.jpg",
      "desc": "bagus",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Container(
      width: double.infinity,
      height: double.infinity,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        colors: [Colors.purple, Colors.blueAccent, Colors.black],
        begin: Alignment.bottomLeft,
        end: Alignment.topRight,
      )),
      child: ListView.builder(
          itemCount: gambarData.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => DetailGambar(
                        nama: gambarData[index]["nama"],
                        genre: gambarData[index]["genre"],
                        images: gambarData[index]["images"],
                        desc: gambarData[index]["desc"],
                      ),
                  ),
                );
              },
              child: Container(
                alignment: Alignment.bottomLeft,
                height: 650,
                margin: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: DecorationImage(
                      image: AssetImage("${gambarData[index]["images"]}"),
                      fit: BoxFit.cover,
                    )),
                child: Container(
                    padding: EdgeInsets.all(6),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black),
                    child: Text(
                      "${gambarData[index]["nama"]} - ${gambarData[index]["genre"]}",
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 14, color: Colors.white),
                    )),
              ),
            );
          }),
    ));
  }
}


