import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nea JIJI descoperit'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTipo1(),
            SizedBox(height: 10),

            CustomCardType2(
                imageUrl:
                    'https://www.xtrafondos.com/descargar.php?id=5846&resolucion=2560x1440',
                imageText: 'sunset'),
            SizedBox(height: 20),

            CustomCardType2(
                imageUrl:
                    'https://www.blogdelfotografo.com/wp-content/uploads/2015/09/Paisaje-de-contrastes.jpg',
                imageText: 'Machala set'),
            SizedBox(height: 20),

            CustomCardType2(
                imageUrl:
                    'https://www.hofmann.es/blog/wp-content/uploads/2021/09/HF_3_Paisajes_WEB-23-1024x768.jpg',
                imageText: 'cascada'),
            SizedBox(height: 20),

            CustomCardType2(
                imageUrl:
                    'https://media.evz.ro/wp-content/uploads/2022/03/gigi-becali.jpg',
                imageText: 'iooooi câtai Sfântul'),
            SizedBox(height: 20),

            CustomCardType2(
                imageUrl:
                    'https://s1.eestatic.com/2022/02/24/actualidad/652695290_222159372_1706x960.jpg',
                imageText: 'Opincarii mei favoriti'),
            SizedBox(height: 20),

            CustomCardType2(
                imageUrl:
                    'https://static01.nyt.com/images/2017/04/03/sports/03romaniasoccer01/03romaniasoccer01-superJumbo.jpg',
                imageText: 'Dublu Boss International'
                //si dejas comentado esto no construye el contenedor
                ),
            //para poder hacer mas scroll hacia abajo
            SizedBox(height: 100),
          ],
        ));
  }
}
