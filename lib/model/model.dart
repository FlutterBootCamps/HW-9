
class Game {
  final String name;
  final double price;
  final String imagePath;
  final String year;
  final String star;
  final String title;
  final String description;
  final String description2;
  final double priceBefore;

  Game({
    required this.name,
    required this.price,
    required this.imagePath,
    required this.year,
    required this.star,
    required this.title,
    required this.description,
    required this.description2,
    required this.priceBefore,
  });

  factory Game.fromJson(Map<String, dynamic> json) {
  return Game(
    name: json['name'],
    price: json['price'].toDouble(),
    imagePath: json['image_path'],
    year: json['Year'],
    star: json['star'],
    title: json['titl'], 
    description: json['description'],
    description2: json['description2'],
    priceBefore: json['pricebefor'].toDouble(),
  );
}
toMap() {
    return {
      "name": name,
      "price": price,
      "imagePath": imagePath,
      "year": year,
      "star": star,
      "title": title,
      "description": description,
      "description2": description2,
      "priceBefore": priceBefore,
      
    };
  }
}
// class Game {
//    String? name;
//    double? price;
//    String? imagePath;
//    String? year;
//    String? star;
//    String? title;
//    String? description;
//    String? description2;
//    double? priceBefore;

//   Game({
//     required this.name,
//     required this.price,
//     required this.imagePath,
//     required this.year,
//     required this.star,
//     required this.title,
//     required this.description,
//     required this.description2,
//     required this.priceBefore,
//   });

//   Game.fromJson(Map<String, dynamic> json) {
   
//       name = json['name'];
//       price = json['price'];
//       imagePath= json['image_path'];
//       year= json['Year'];
//       star= json['star'];
//       title= json['titl'];
//       description= json['description'];
//       description2= json['description2'];
//       priceBefore= json['pricebefor'];
   
//   }


// }