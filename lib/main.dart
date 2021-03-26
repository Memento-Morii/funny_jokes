import 'package:flutter/material.dart';
import 'package:funny_jokes/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: GoogleFonts.dosis().fontFamily,
          ),
          headline2: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: GoogleFonts.dosis().fontFamily,
          ),
          headline3: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: GoogleFonts.dosis().fontFamily,
          ),
          headline4: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: GoogleFonts.dosis().fontFamily,
          ),
          headline5: TextStyle(
            fontSize: 40,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: GoogleFonts.dosis().fontFamily,
          ),
          bodyText1: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: GoogleFonts.dosis().fontFamily,
          ),
          bodyText2: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: GoogleFonts.dosis().fontFamily,
          ),
        ),
        primarySwatch: Colors.blue,
      ),
      home: Home(),
    );
  }
}
