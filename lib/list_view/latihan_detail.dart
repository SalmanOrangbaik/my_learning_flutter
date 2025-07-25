// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class LatihanDetail extends StatelessWidget {
  final String nama;
  final String gender;
  final String point;
  final String level;
  final String bio;
  final String zodiac;
  final String image;

  const LatihanDetail({
    super.key,
    required this.nama,
    required this.gender,
    required this.point,
    required this.level,
    required this.bio,
    required this.zodiac,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigoAccent,
      appBar: AppBar(
        title: Text(nama),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 10),
            Center(
              child: Text(
                "$nama - $gender",
                style: TextStyle(fontSize: 20, color: Colors.white),
              ),
            ),
            SizedBox(height: 10),
            Container(
              alignment: Alignment.center,
              height: 300,
              margin: EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.grey[300],
                image: image != ""
                    ? DecorationImage(
                        image: AssetImage(image),
                        fit: BoxFit.cover,
                      )
                    : null,
              ),
              child: image == ""
                  ? Icon(Icons.person, size: 100, color: Colors.white)
                  : null,
            ),
            SizedBox(height: 20),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 16),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Point     : $point", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text("Level     : $level", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text("Bio       : $bio", style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text("Zodiac    : $zodiac", style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
