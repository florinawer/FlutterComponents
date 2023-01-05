import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Eu stiu Carduri'),
        ),
        body: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
          children: const [
            CustomCardTipo1(),
            SizedBox(height: 10),

            CustomCardType2(
                imageUrl:
                    'https://r1.ilikewallpaper.net/iphone-8-plus-wallpapers/download-109650/Mikasa-Attack-Titan-Attack-On-Titan-4k-Mikasa-Acke.jpg',
                imageText: 'tranki pava'),
            SizedBox(height: 20),

            CustomCardType2(
                imageUrl:
                    'https://i.pinimg.com/originals/45/57/20/455720e9019fb22ff9fff89522313884.png',
                imageText: 'calentando motores'),
            SizedBox(height: 20),

            CustomCardType2(
              imageUrl:
                  'https://rare-gallery.com/mocahbig/395262-mikasa-ackerman-attack-on-titan-aot-4k-pc.jpg',

              //si dejas comentado esto no construye el contenedor
              imageText: 'ñaaaa, te rajo pavo',
            ),
            //para poder hacer mas scroll hacia abajo
            SizedBox(height: 100),
          ],
        ));
  }
}
