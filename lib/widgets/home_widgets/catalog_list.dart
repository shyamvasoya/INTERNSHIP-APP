import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/home_detail_page.dart';
import 'package:flutter_application_1/pages/home_page.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../widgets/theme.dart';
import 'catalog_image.dart';

class CatalogList extends StatelessWidget {
  CatalogList({Key? key, required this.mainData}) : super(key: key);

  final mainData;
  @override
  Widget build(BuildContext context) {
    //var mainData;

    return ListView.builder(
        shrinkWrap: true,
        itemCount: mainData.length,
        itemBuilder: (context, index) {
          final catalog = mainData[index]['image'];
          final catalog1 = mainData[index]['name'];
          final catalog2 = mainData[index]['desc'];
          final catalog3 = mainData[index]['price'];
          return InkWell(
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => new HomeDetailPage(
                  catalog: catalog,
                  name1: catalog1,
                  desc1: catalog2,
                  price: catalog3,
                ),
              ),
            ),
            child: CatalogItem(
                catalog: catalog,
                name: catalog1,
                desc: catalog2,
                price: catalog3),
          );
        });
  }
}

//-----------------------------------------

class CatalogItem extends StatelessWidget {
  final catalog;
  final String name;
  final String desc;
  final num price;
  CatalogItem(
      {Key? key,
      required this.catalog,
      required this.name,
      required this.desc,
      required this.price})
      : //assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    resizeToAvoidBottomInset:
    false;
    return VxBox(
        child: Row(
      children: [
        Hero(tag: Key(catalog.toString()), child: CatalogImage(image: catalog)),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            name.text.lg.color(MyTheme.darkBluishColor).bold.make(),
            desc.text.textStyle(context.captionStyle).make(),
            ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              children: [
                "\₹${price}".text.bold.lg.make(),
                ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(MyTheme.darkBluishColor),
                      shape: MaterialStateProperty.all(
                        StadiumBorder(),
                      )),
                  child: "Add".text.lg.make(),
                ),
              ],
            )
          ],
        ))
      ],
    )).white.rounded.square(125).make().py16();
  }
}
