import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
        primarySwatch: Colors.deepPurple,
        listTileTheme: ListTileThemeData(
            tileColor: Colors.grey.shade100, contentPadding: EdgeInsets.all(10)
            // shape:
            //     BeveledRectangleBorder(borderRadius: BorderRadius.circular(20)),
            ),
        fontFamily: GoogleFonts.poppins().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme(),
        appBarTheme: AppBarTheme(),
        // elevatedButtonTheme: ElevatedButtonThemeData(
        // style: ButtonStyle(
        //     backgroundColor: MaterialStateProperty.all(Colors.red)))
      );

  //color

  static Color creamColor = Color.fromARGB(254, 240, 238, 238);
  static Color darkBluishColor = Color(0xff403b58);
}
