// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:my_learning/list_view/latihan_detail.dart';

class LatihanList extends StatelessWidget {
  LatihanList({super.key});

  final List<Map<String, dynamic>> latihan = [
    {
      "nama": "Ali",
      "gender": "pria",
      "image": "images/animal-red-panda-fall-wildlife-hd-wallpaper-preview.jpg",
      "point": "2000",
      "level": "50",
      "Bio": "N1",
      "Zodiac": "Sagitarius",
    },
    {
      "nama": "Siti",
      "gender": "wanita",
      "image": "images/animal-red-panda-fall-wildlife-hd-wallpaper-preview.jpg",
      "point": "1100",
      "level": "5",
      "Bio": "Good",
      "Zodiac": "Cancer",
    },
    {
      "nama": "Ali",
      "gender": "pria",
      "image": "images/animal-red-panda-fall-wildlife-hd-wallpaper-preview.jpg",
      "point": "1000",
      "level": "30",
      "Bio": "Dang",
      "Zodiac": "Gemini",
    },
    {
      "nama": "Siti",
      "gender": "wanita",
      "image": "images/animal-red-panda-fall-wildlife-hd-wallpaper-preview.jpg",
      "point": "1299",
      "level": "10",
      "Bio": "Good",
      "Zodiac": "Libra",
    },
    {
      "nama": "Den",
      "gender": "Pria",
      "image": "images/animal-red-panda-fall-wildlife-hd-wallpaper-preview.jpg",
      "point": "1300",
      "level": "20",
      "Bio": "GG",
      "Zodiac": "Taurus",
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
            colors: [Colors.blue, Colors.white, Colors.green],
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView.builder(
          itemCount: latihan.length,
          itemBuilder: (context, index) {
            final player = latihan[index];
            return Container(
              height: 100,
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.6),
              ),
              child: Row(
                children: [
                  // Foto profil
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey,
                      image: player["image"] != ""
                          ? DecorationImage(
                              image: AssetImage(player["image"]),
                              fit: BoxFit.cover,
                            )
                          : null,
                    ),
                    child: player["image"] == ""
                        ? Icon(Icons.person, color: Colors.white)
                        : null,
                  ),

                  SizedBox(width: 12),

                  // Nama dan Point
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          player["nama"],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        SizedBox(height: 4),
                        Text(
                          'Point: ${player["point"]}',
                          style: TextStyle(
                            color: Colors.amberAccent,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Tombol Detail
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LatihanDetail(
                            nama: player["nama"],
                            gender: player["gender"],
                            point: player["point"],
                            level: player["level"],
                            bio: player["Bio"],
                            zodiac: player["Zodiac"],
                            image: player["image"],
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: EdgeInsets.symmetric(horizontal: 12),
                    ),
                    child:
                        Text("Detail", style: TextStyle(color: Colors.white)),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
