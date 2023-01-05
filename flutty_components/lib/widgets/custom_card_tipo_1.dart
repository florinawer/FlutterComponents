import 'package:flutter/material.dart';
import '../themes/app_theme.dart';

class CustomCardTipo1 extends StatelessWidget {
  const CustomCardTipo1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Column(children: [
      const ListTile(
        leading: Icon(Icons.photo_album_outlined, color: AppTheme.primary),
        title: Text('Eu eu si doar eu'),
        subtitle: Text(
            'Eu stiu eu fac eu dreg, si nu mie frica de nimic si de nimeni eu is Nea JIJI'),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {},
              child: const Text('OK'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Cancel'),
            ),
          ],
        ),
      )
    ]));
  }
}
