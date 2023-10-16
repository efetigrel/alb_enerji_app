import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Binding'in başlatılmasını sağlar

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#ffffff"),
        appBar: AppBar(
          backgroundColor: HexColor("#1e2b50"),
          title: const Text("Alb Enerji"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                image: AssetImage("lib/images/alb_logo.png"),
              ),
              buildText("Alb Enerji", 62),
              buildText("A Bright İdea", 24),
              buildDivider(),
              buildRow(Icons.mail, "satis@alb-enerji.com"),
              buildRow(Icons.phone, "+(90) 0555 555 55 55"),
            ],
          ),
        ),
      ),
    ),
  );
}

Widget buildText(String text, double fontSize) {
  return Text(
    text,
    style: GoogleFonts.poppins(
      fontSize: fontSize,
      color: HexColor("#1e2b50"),
    ),
  );
}

Widget buildDivider() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50),
    child: Divider(
      color: HexColor("#1e2b50"),
      thickness: 1,
    ),
  );
}

Widget buildRow(IconData icon, String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50),
    child: Container(
      color: HexColor("#1e2b50"),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [Icon(icon), Text(text)],
      ),
    ),
  );
}
