// import 'dart:html';
// import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/routes.dart';
import 'dart:convert';
//import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';
import 'package:flutter_application_1/widgets/theme.dart';
import 'package:http/http.dart' as http;
import 'dart:ffi';

import 'package:velocity_x/velocity_x.dart';

import '../widgets/home_widgets/catalog_header.dart';
import '../widgets/home_widgets/catalog_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //var mainData;

  //class CatalogList({required this.shyam});
  bool loading = false;
  var k = 0;
  @override
  // var mainData;
  void initState() {
    // TODO: implement initState
    super.initState();
    loadData();
  }

  loadData() async {
    // var url =
    //     Uri.parse("https://mocki.io/v1/66c9ae63-a04e-4722-9a78-9a7814c2434b");
    // var response = await http.get(url);
    // var decodedData = await jsonDecode(response.body);

    // var response = await rootBundle.loadString("assets/files/catalog.json");
    // var decodedData = await jsonDecode(response);
    // var data = await decodedData["products"];
    // mainData = await data;
    // loading = true;
    // setState(() {});

    var response = await rootBundle.loadString("assets/files/catalog.json");
    var decode = await jsonDecode(response);
    var data = await decode["products"];
    mainData = await data;
    loading = true;

    setState(() {});
  }

  @override
  var mainData;
  Widget build(BuildContext context) {
    // final dumyList = List.generate(20, (index) => CatalogModel.items[0]);
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => Navigator.pushNamed(context, MyRoutes.CartRoute),
          backgroundColor: MyTheme.darkBluishColor,
          child: Icon(CupertinoIcons.cart),
        ),
        backgroundColor: MyTheme.creamColor,
        body: SafeArea(
          child: Container(
            padding: EdgeInsets.all(32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CatalogHader(),
                if (mainData != null && mainData.isNotEmpty)
                  CatalogList(
                    mainData: mainData,
                  ).expand()
                else
                  Center(
                    child: CircularProgressIndicator(),
                  )
              ],
            ),
          ),
        ));
  }
}
