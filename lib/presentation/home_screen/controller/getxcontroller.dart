import 'dart:convert';

import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';
import 'package:ontrack/presentation/home_screen/models/getxmodel.dart';
import 'package:shared_preferences/shared_preferences.dart';

class DataController extends GetxController {
  List<Car> cars = [
    Car(
        name: "Maruthi Alto 800",
        imagePath: "assets/images/alto.jpg",
        price: 130000,
        postedBy: "Raseel P",
        profile: "assets/images/profile.jpg"),
    Car(
        name: "Maruthi Brezza",
        imagePath: "assets/images/brezza.jpg",
        price: 950000,
        postedBy: "John Doe",
        profile: "assets/images/profile2.png"),
    Car(
        name: "Honda City",
        imagePath: "assets/images/city.jpg",
        price: 1200000,
        postedBy: "Jane Doe",
        profile: "assets/images/profile3.jpg"),
    Car(
        name: "Maruthi Swift",
        imagePath: "assets/images/swift.jpeg",
        price: 800000,
        postedBy: "Alice Smith",
        profile: "assets/images/profile5.jpeg"),
  ];

  List<Bike> bike = [
    Bike(
        bikename: "Activa 3G",
        bikeimage: "assets/images/activa.jpg",
        bikeprice: 35000,
        postedby: "Raseel",
        profilebike: "assets/images/profile.jpg"),
    Bike(
        bikename: "Hunter",
        bikeimage: "assets/images/hunter.jpg",
        bikeprice: 50000,
        postedby: "Smith",
        profilebike: "assets/images/profile2.png"),
    Bike(
        bikename: "Yamaha MT",
        bikeimage: "assets/images/MT.jpg",
        bikeprice: 45000,
        postedby: "Anas",
        profilebike: "assets/images/profile3.jpg"),
    Bike(
        bikename: "Unicorn",
        bikeimage: "assets/images/unicorn.jpeg",
        bikeprice: 20000,
        postedby: "joan",
        profilebike: "assets/images/profile5.jpeg"),
  ];
  @override
  void onInit() {
    super.onInit();
    loadWishlist();
  }

  final RxList<Car> whishlist = <Car>[].obs;

  // void removeFromCart(int index) {
  //   index >= 0 && index < whishlist.length
  //   Car removedItem = whishlist.removeAt(index);
  //   update();
  //   removeFromSharedPreferences(removedItem);
  //   savewishlist();
  // }
  void removeFromCart(int index) {
    if (index >= 0 && index < whishlist.length) {
      Car removedItem = whishlist[index];
      whishlist.removeAt(index);
      update();
      removeFromSharedPreferences(removedItem);
      savewishlist();
    } else {
      // Handle the case where the index is out of bounds.
      print('Invalid index: $index');
    }
  }

  void addToCart(Car item) {
    if (!isinwhishlist(item)) {
      whishlist.add(item);
      savewishlist();
    }
  }

  // void remove(Car item) {
  //   whishlist.remove(item);
  // }

  Future<void> savewishlist() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> jsonList =
        whishlist.map((car) => jsonEncode(car.toJson())).toList();
    await prefs.setStringList('wishlist', jsonList);
  }

  Future<void> loadWishlist() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? jsonList = prefs.getStringList('wishlist');
    if (jsonList != null) {
      whishlist.value = jsonList
          .map((jsonString) => Car.fromJson(jsonDecode(jsonString)))
          .toList();
    }
  }
  Future<void> removeFromSharedPreferences(Car item) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? jsonList = prefs.getStringList('wishlist');
    if (jsonList != null) {
      jsonList.removeWhere((jsonString) {
        Car car = Car.fromJson(jsonDecode(jsonString));
        return  car.name == item.name ;
      });
      await prefs.setStringList('wishlist', jsonList);
    }
  }

  bool isinwhishlist(Car item) {
    return whishlist.any((car) =>
        car.name == item.name &&
        car.profile == item.profile &&
        car.postedBy == item.postedBy &&
        car.price == item.price &&
        car.imagePath == item.imagePath);
  }
}
