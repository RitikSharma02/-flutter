class Item {
  late final String id, name, desc, color, image;

  late final num price;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}

final products = [
  Item(
      id: "samplecheck",
      name: "i phone",
      desc: "14 pro max ",
      price: 89000,
      color: "color",
      image: "https://m.media-amazon.com/images/I/71DjxIGy0ZL._SX522_.jpg")
];
