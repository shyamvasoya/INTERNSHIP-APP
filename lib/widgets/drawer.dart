import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ImageUrl =
        "https://rukminim1.flixcart.com/image/416/416/showpiece-figurine/t/n/t/wall-hang-s-monarchy-002-ac-r-12inx12in-stay-nish-original-imaeqqf2ycxfcztp.jpeg?q=70";
    return Drawer(
      child: Container(
        color: Colors.deepPurple,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: Text(
                  "shyam vasoya",
                  style: TextStyle(color: Colors.white),
                ),
                accountEmail: Text("shyamvasoya3@gmail.com",
                    style: TextStyle(color: Colors.white)),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(ImageUrl),
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(color: Colors.white),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.lato().fontFamily),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.white,
              ),
              title: Text(
                "Email",
                textScaleFactor: 1.2,
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: GoogleFonts.lato().fontFamily),
              ),
            )
          ],
        ),
      ),
    );
  }
}
