class GameModel {
  GameModel({
    required this.id,
    required this.name,
    required this.image,
    required this.currentPrice,
    required this.previousPrice,
    required this.description,
    required this.rating,
    required this.year,
  });
  late final int id;
  late final String name;
  late final String image;
  late final double currentPrice;
  late final double previousPrice;
  late final String description;
  late final double rating;
  late final int year;
  
  GameModel.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    image = json['image'];
    currentPrice = json['current_Price'];
    previousPrice = json['previous_price'];
    description = json['description'];
    rating = json['rating'];
    year = json['year'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['name'] = name;
    _data['image'] = image;
    _data['current_Price'] = currentPrice;
    _data['previous_price'] = previousPrice;
    _data['description'] = description;
    _data['rating'] = rating;
    _data['year'] = year;
    return _data;
  }
}