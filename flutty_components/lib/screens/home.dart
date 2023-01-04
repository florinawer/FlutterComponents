import 'package:flutter/material.dart';
import 'package:flutty_components/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  final options = const [
    'flokiiiiiii',
    'test',
    'stf in plm ',
    'flo',
    'testla',
    'vespuxi',
    'flo',
    'davai',
    'vespuxi',
    'flo',
    'floko',
    'asdddddddddddddddddd',
    'vespuxi'
  ];

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;

    return Scaffold(
        appBar: AppBar(
          title: const Text('Hai dute-n stf in plm'),
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 70, 69, 129),
        ),
        body: ListView.separated(
            itemBuilder: (context, i) => ListTile(
                  leading: Icon(menuOptions[i].icon, color: Colors.indigo,),
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
