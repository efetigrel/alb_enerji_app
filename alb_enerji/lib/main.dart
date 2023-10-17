import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized(); // Binding'in başlatılmasını sağlar

  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: HexColor("#DAFFFB"),
        appBar: AppBar(
          backgroundColor: HexColor("#04364A"),
          title: const Text("Alb Enerji"),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Image(
                width: 150,
                image: AssetImage("lib/images/alb_icon.png"),
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
      color: HexColor("#04364A"),
      fontWeight: FontWeight.w700,
    ),
  );
}

Widget buildDivider() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 118, vertical: 30),
    child: Divider(
      color: HexColor("#1e2b50"),
      thickness: 1,
    ),
  );
}

Widget buildRow(IconData icon, String text) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 5),
    child: Container(
      decoration: BoxDecoration(
        color: HexColor("#64CCC5"),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.all(20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon),
          SizedBox(
            width: 20,
          ),
          Text(
            text,
            style: GoogleFonts.poppins(
              color: HexColor("#04364A"),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    ),
  );
}
