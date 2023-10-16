import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#010101"),
        appBar: AppBar(
          backgroundColor: HexColor("#1e2b50"),
          title: const Text("Alb Enerji"),
          centerTitle: true,
        ),
        body: const Center(
          child: Image(
            image: AssetImage("lib/images/alb_logo.png"),
          ),
        ),
      ),
    ),
  );
}
