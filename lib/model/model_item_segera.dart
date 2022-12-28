


class Business {
  Business({
    required this.name,
    required this.image,
    required this.price,
    required this.valueProgressBar,
    required this.percentBussines,
    required this.id,
  });

  String name;
  String image;
  String price;
  int valueProgressBar;
  int percentBussines;
  String id;

  factory Business.fromJson(Map<String, dynamic> json) => Business(
    name: json["name"],
    image: json["image"],
    price: json["price"],
    valueProgressBar: json["valueProgressBar"],
    percentBussines: json["percentBussines"],
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "image": image,
    "price": price,
    "valueProgressBar": valueProgressBar,
    "percentBussines": percentBussines,
    "id": id,
  };
}



