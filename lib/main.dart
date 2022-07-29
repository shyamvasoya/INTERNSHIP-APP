import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/cart_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/pages/login.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MyTheme.lightTheme(context),
      // themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.loginroutes,
      routes: {
        MyRoutes.homeroutes: (context) => HomePage(),
        MyRoutes.loginroutes: (context) => login(),
        MyRoutes.CartRoute: (context) => CartPage(),
      },
    );
  }
}
