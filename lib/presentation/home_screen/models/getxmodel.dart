
class Car {
  final String name;
  final String imagePath;
  final double price;
  final String postedBy;
  final String profile;

  Car({
    required this.name,
    required this.imagePath,
    required this.price,
    required this.postedBy,
    required this.profile,
  });
  factory Car.fromJson(Map<String, dynamic> json) {
    return Car(
      name: json['name'],
      imagePath: json['imagePath'],
      price: json['price'],
      postedBy: json['postedBy'],
      profile: json['profile'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'imagePath': imagePath,
      'price': price,
      'postedBy': postedBy,
      'profile': profile,
    };
  }

}
class Bike {
  final String bikename;
  final String bikeimage;
  final double bikeprice;
  final String postedby;
  final String profilebike;

  Bike({
    required this.bikename,
    required this.bikeimage,
    required this.bikeprice,
    required this.postedby,
    required this.profilebike,
  });
}