

// class Business {
//   Business({
//     required this.name,
//     required this.image,
//     required this.price,
//     required this.id,
//   });
//
//   String name;
//   String image;
//   String price;
//   String id;
//
//   factory Business.fromJson(Map<String, dynamic> json) => Business(
//     name: json["name"],
//     image: json["image"],
//     price: json["price"],
//     id: json["id"],
//   );
//
// }



class BussinesSoon {
  BussinesSoon({
    required this.judul,
    required this.image,
    required this.valueProgressbar,
    required this.nilaiBisnis,
    required this.price,
    required this.perusahaan,
    required this.lokasi,
    required this.jumlahInvestor,
    required this.hasilInvestasi,
    required this.tentangBisnis,
    // required this.kategori,
    // required this.kalkulatorInvestasi,
    required this.id,
  });

  String judul;
  List<String> image;
  double valueProgressbar;
  int nilaiBisnis;
  int price;
  String perusahaan;
  String lokasi;
  int jumlahInvestor;
  int hasilInvestasi;
  String tentangBisnis;
  // Kategori kategori;
  // KalkulatorInvestasi kalkulatorInvestasi;
  String id;

  factory BussinesSoon.fromJson(Map<String, dynamic> json) => BussinesSoon(
    judul: json["judul"],
    image: List<String>.from(json["image"].map((x) => x)),
    valueProgressbar: json["valueProgressbar"].toDouble(),
    nilaiBisnis: json["nilaiBisnis"],
    price: json["price"],
    perusahaan: json["perusahaan"],
    lokasi: json["lokasi"],
    jumlahInvestor: json["jumlahInvestor"],
    hasilInvestasi: json["hasilInvestasi"],
    tentangBisnis: json["tentangBisnis"],
    // kategori: kategoriValues.map![json["kategori"]] as Kategori,
    // kalkulatorInvestasi: kalkulatorInvestasiValues.map![json["kalkulatorInvestasi"]] as KalkulatorInvestasi,
    id: json["id"],
  );

}

enum KalkulatorInvestasi { KALKULATOR_INVESTASI_1, KALKULATOR_INVESTASI_3 }

final kalkulatorInvestasiValues = EnumValues({
  "kalkulatorInvestasi 1": KalkulatorInvestasi.KALKULATOR_INVESTASI_1,
  "kalkulatorInvestasi 3": KalkulatorInvestasi.KALKULATOR_INVESTASI_3
});

enum Kategori { FOOD_AND_BEVERAGE, FASHION, PLANTS }

final kategoriValues = EnumValues({
  "Fashion": Kategori.FASHION,
  "Food and Beverage": Kategori.FOOD_AND_BEVERAGE,
  "Plants": Kategori.PLANTS
});

class EnumValues<T> {
  Map<String, T>? map;
  Map<T, String>? reverseMap;

  EnumValues(this.map) {
    // TODO: implement
    throw UnimplementedError();
  }

  Map<T, String>? get reverse {
    reverseMap ??= map?.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}


