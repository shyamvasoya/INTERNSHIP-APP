class CatalogModel {
  static List<Item> items = [
    Item(
      id: 1,
      name: "iPhone 13 Pro Mex",
      desc: "Light Blue",
      price: 100,
      color: 'red',
      image:
          "https://cdn.dnaindia.com/sites/default/files/styles/full/public/2021/09/15/996296-iphone-13-pro.jpg",
    )
  ];
}

class Item {
  final num id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});

  factory Item.fromMap(Map<String, dynamic> map) {
    return Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      image: map["image"],
    );
  }

  toMap() => {
        "id": id,
        "name": name,
        "desc": desc,
        "price": price,
        "color": color,
        "image": image
      };
}
