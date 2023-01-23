import 'package:flutter/material.dart';

import 'package:flutty_components/models/models.dart';
import 'package:flutty_components/screens/screens.dart';

import '../screens/card.dart';

class AppRoutes {
  static const initialRoute = 'home';

  static final menuOptions = <MenuOption>[
    MenuOption(
        route: 'home2',
        name: 'listado nombres',
        screen: const Home2(),
        icon: Icons.house_siding_rounded),
    MenuOption(
        route: 'alert_screen',
        name: 'alert',
        screen: const AlertScreen(),
        icon: Icons.add_alert_rounded),
    MenuOption(
        route: 'avatar_screen',
        name: 'avatar',
        screen: const AvatarScreen(),
        icon: Icons.supervised_user_circle_rounded),
    MenuOption(
        route: 'animated_screen',
        name: 'animated container',
        screen: const AnimatedScreen(),
        icon: Icons.play_arrow_rounded),
    MenuOption(
        route: 'input_screen',
        name: 'inputs',
        screen: const InputsScreen(),
        icon: Icons.settings_input_svideo_rounded),
    MenuOption(
        route: 'slider_screen',
        name: 'slider',
        screen: const SliderScreen(),
        icon: Icons.slideshow_rounded),
    MenuOption(
        route: 'card',
        name: 'card',
        screen: const CardScreen(),
        icon: Icons.add_card_rounded)
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    //por cada ruta devuelve un objeto de este tipo en appRoutes
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    appRoutes.addAll({'home': (BuildContext context) => const HomeScreen()});

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
