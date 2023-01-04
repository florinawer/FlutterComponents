import 'package:flutter/material.dart';

import 'package:flutty_components/models/models.dart';
import 'package:flutty_components/screens/screens.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    //TODO borrar home
    MenuOption(
        route: 'home',
        name: ' screen',
        screen: const HomeScreen(),
        icon: Icons.home_max_rounded),
    MenuOption(
        route: 'home2',
        name: ' screen',
        screen: const Home2(),
        icon: Icons.house_siding_rounded),
    MenuOption(
        route: 'alert_screen',
        name: ' screen',
        screen: const AlertScreen(),
        icon: Icons.add_alert_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};

    for (final option in menuOptions) {
      appRoutes.addAll({option.route: (BuildContext context) => option.screen});
    }

    return appRoutes;
  }

  //alternativas a rutas
  // static Map<String, Widget Function(BuildContext)> routes = {
  // 'home': (BuildContext context) => const HomeScreen(),
  //  'home2': (BuildContext context) => const Home2(),
  //  'alert_screen': (BuildContext context) => const AlertScreen()
  // };

  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(builder: (context) => const AlertScreen());
  }
}
