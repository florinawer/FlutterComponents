import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const Home2({Key? key}) : super(key: key);

  final options = const ['flo', 'sexy', 'vespuxi'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar: AppBar(
            title: const Text('Lista stf in plm'),
          ),
          body: ListView(
            children: [
              ...options.map( 
                (e) => ListTile(
                  title: Text(e),
                  trailing: const Icon(Icons.arrow_right_alt)
                )
              ).toList()              
            ],
          )
    );
  }
}
