import 'package:flutter/material.dart';
import 'dart:math';
import 'about_me.dart';

class PersegiResult extends StatelessWidget {
  PersegiResult({@required this.alas_segitiga, @required this.tinggi_segitiga});
  final int alas_segitiga;
  final int tinggi_segitiga;
  int thasil;
  String cHasil;
  int hasil;

  @override
  Widget build(BuildContext context) {
    double hasil = (alas_segitiga * tinggi_segitiga * 0.5);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text('HASIL'),
      ),
      body: Container(
        color: Colors.white,
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: 20,
              child: Container(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 10,
              child: Container(
                color: Colors.white,
              ),
            ),
            Text(
              'Luas Segitiga adalah :',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black54,
              ),
            ),
            Text(
              ' $hasil ',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
