import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_image.dart';
import 'package:matcher/matcher.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:flutter_application_1/widgets/home_widgets/catalog_list.dart';

import '../widgets/theme.dart';

class HomeDetailPage extends StatelessWidget {
  final String catalog;
  final String name1;
  final String desc1;
  final int price;

  HomeDetailPage({
    Key? key,
    required this.catalog,
    required this.name1,
    required this.desc1,
    required this.price,
  })  : assert(
          catalog != null,
          name1 != null,
        ),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(),
        backgroundColor: MyTheme.creamColor,
        bottomNavigationBar: Container(
          color: Colors.white,
          child: ButtonBar(
            alignment: MainAxisAlignment.spaceBetween,
            children: [
              "\₹${price}".text.bold.red800.lg.make(),
              ElevatedButton(
                onPressed: () {},
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(MyTheme.darkBluishColor),
                    shape: MaterialStateProperty.all(
                      StadiumBorder(),
                    )),
                child: "Add".text.make(),
              ),
            ],
          ),
        ),
        body: Center(
          child: Column(children: [
            Image.network(catalog).h32(context).py12(),
            Expanded(
              child: VxArc(
                  height: 30.0,
                  arcType: VxArcType.CONVEY,
                  edge: VxEdge.TOP,
                  child: Container(
                      color: Colors.white,
                      width: context.screenWidth,
                      child: Column(
                        children: [
                          name1.text.xl4
                              .color(MyTheme.darkBluishColor)
                              .bold
                              .make(),
                          desc1.text.xl.textStyle(context.captionStyle).make(),
                          " Amet takimata elitr et invidunt dolor dolor, magna amet ut justo et, at erat eirmod takimata erat sanctus nonumy, magna nonumy ut dolor ipsum duo clita sit, amet vero magna dolor ut rebum kasd at no."
                              .text
                              .lg
                              .textStyle(context.captionStyle)
                              .make()
                              .p4(),
                        ],
                      ).py64())),
            )
          ]),
        ));
  }
}
// tag: Key(catalog.toString()), child: 