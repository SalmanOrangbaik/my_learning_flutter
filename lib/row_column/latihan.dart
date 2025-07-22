// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:my_learning/main_layout.dart';

class Latihan extends StatelessWidget {
  const Latihan({super.key});

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: 'Latihan',
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Container(
                width: 1000,
                height: 100,
                margin: EdgeInsets.all(15),
                color: const Color.fromARGB(255, 247, 11, 11),
                child: Center(
                  child: Text(
                    'VALORANT',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://pbs.twimg.com/media/GT_VN9BXQAA28su.jpg',
                      width: 600,
                    ),
                    Image.network(
                        'https://pbs.twimg.com/media/GT_VN9BXQAA28su.jpg',
                        width: 600),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.network(
                      'https://image.ggwp.id/post/20250513/upload_1f8cb81588357c9a5d18fbe2c001a5e7.jpg',
                      width: 500,
                    ),
                    Image.network(
                        'https://image.ggwp.id/post/20250513/upload_1f8cb81588357c9a5d18fbe2c001a5e7.jpg',
                        width: 500),
                    Image.network(
                        'https://image.ggwp.id/post/20250513/upload_1f8cb81588357c9a5d18fbe2c001a5e7.jpg',
                        width: 500),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
