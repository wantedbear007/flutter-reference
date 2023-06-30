class CatalogModel {
  static final items = [
    Item(
      id: "01",
      name: "Dell xps 14",
      desc: "Premium laptop for alpha people.",
      price: 999,
      color: "#33505a",
      imgUrl:
          "https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/page/franchise/xps/9-2022-update/prod-2366-laptop-xps-17-9720-1920x1440.png?fmt=png-alpha&wid=1920&hei=1440",
    )
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String imgUrl;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.imgUrl});

  // Item.fromMap(Map<String>)
  factory Item.fromMap(Map<String, dynamic> map) {
    Item(
      id: map["id"],
      name: map["name"],
      desc: map["desc"],
      price: map["price"],
      color: map["color"],
      imgUrl: map["imgUrl"],
    );
  }
// final products = [
// Item(
//   id: "01",
//   name: "Dell xps 14",
//   desc: "Premium laptop for alpha people.",
//   price: 999,
//   color: "#33505a",
//   imgUrl:
//   "https://i.dell.com/is/image/DellContent/content/dam/ss2/product-images/page/franchise/xps/9-2022-update/prod-2366-laptop-xps-17-9720-1920x1440.png?fmt=png-alpha&wid=1920&hei=1440",)
// ];
}
