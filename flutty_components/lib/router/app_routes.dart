import 'package:flutter/material.dart';

import 'package:flutty_components/models/models.dart';
import 'package:flutty_components/screens/screens.dart';

import '../screens/card.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home',
        name: 'home',
        screen: const HomeScreen(),
        icon: Icons.home_max_rounded),
    MenuOption(
        route: 'home2',
        name: 'home2',
        screen: const Home2(),
        icon: Icons.house_siding_rounded),
    MenuOption(
        route: 'alert_screen',
        name: 'alert',
        screen: const AlertScreen(),
        icon: Icons.add_alert_rounded),
    MenuOption(
        route: 'card',
        name: 'card',
        screen: const CardScreen(),
        icon: Icons.add_card_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //por cada ruta devuelve un objeto de este tipo en appRoutes
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
