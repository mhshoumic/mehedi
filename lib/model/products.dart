class CataLogModel {
  static final items = [
    Item("P0001", "iPhone 13 256GB", "Brand New iPhone 13", "127,345/=", "Blue",
        "https://static-01.daraz.com.bd/p/d7707243a325b3e77bacc9c0018c3bbf.jpg_340x340q80.jpg_.webp")
  ];
}

class Item {
  final String id;
  final String name;
  final String desc;
  final String price;
  final String color;
  final String image;

  Item(this.id, this.name, this.desc, this.price, this.color, this.image);
}
