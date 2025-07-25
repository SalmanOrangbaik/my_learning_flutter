// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:my_learning/main_layout.dart';

class OutputFormScreen extends StatelessWidget {
  final String nama, jk, tglLahir, agama;

  OutputFormScreen({
    Key? key,
    required this.nama,
    required this.jk,
    required this.tglLahir,
    required this.agama,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MainLayout(
      title: "Output Form",
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              elevation: 4,
              margin: EdgeInsets.all(16),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
                side: BorderSide(color: Colors.black),
              ),
              child: Padding(
                padding:  EdgeInsets.all(24.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Data Formulir",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                    SizedBox(height: 18),
                    _tampilan("Nama Lengkap", nama),
                    SizedBox(height: 18),
                    _tampilan("Jenis Kelamin", jk),
                    SizedBox(height: 18),
                    _tampilan("Tanggal Lahir", tglLahir),
                    SizedBox(height: 18),
                    _tampilan("Agama", agama),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Widget untuk field output yang mirip TextFormField tapi read-only
  Widget _tampilan(String label, String value) {
    return TextFormField(
      initialValue: value,
      readOnly: true,
      decoration: InputDecoration(
        labelText: label,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: Colors.grey[200],
      ),
      style: TextStyle(color: Colors.black87),
    );
  }
}
