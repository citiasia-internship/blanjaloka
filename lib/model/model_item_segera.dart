

class Business {
  Business({
    required this.name,
    required this.image,
    required this.price,
    required this.id,
  });

  String name;
  String image;
  String price;
  String id;

  factory Business.fromJson(Map<String, dynamic> json) => Business(
    name: json["name"],
    image: json["image"],
    price: json["price"],
    id: json["id"],
  );

}
