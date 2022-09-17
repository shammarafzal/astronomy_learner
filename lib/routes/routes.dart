import 'package:get/get.dart';

import '../screens/home.dart';
import '../screens/planet_details.dart';


class Routes{
  static final routes = [
    GetPage(
      name: '/home',
      page: () => Home(),
    ),
    GetPage(
      name: '/planet_details',
      page: () => PlanetDetails(),
    ),
  ];
}
