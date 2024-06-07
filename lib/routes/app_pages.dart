import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';
import 'package:ontrack/presentation/home_screen/innerpage/cartview.dart';
import 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.CART;

  static final routes = [
    GetPage(
      name: Paths.CART,
      page: () => innerview(),
      transition: Transition.fadeIn,
    ),

  ];
}
