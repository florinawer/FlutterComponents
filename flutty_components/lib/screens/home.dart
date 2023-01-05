import 'package:flutter/material.dart';
import 'package:flutty_components/router/app_routes.dart';
import 'package:flutty_components/themes/app_theme.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Hai Domnul JIJI  Becali'),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(menuOptions[i].icon, color: AppTheme.primary,),
                  title: Text(menuOptions[i].name),
                  onTap: () {
                    //hard way
                    //   final route = MaterialPageRoute(
                    //      builder: (context) => const ListView1() );
                    //    Navigator.push(context, route);

                    //easy way
                    Navigator.pushNamed(context,menuOptions[i].route);
                  },
                ),
            separatorBuilder: (_, __) => const Divider(),
            itemCount: AppRoutes.menuOptions.length));
  }
}
