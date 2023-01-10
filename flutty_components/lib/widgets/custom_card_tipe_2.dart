import 'package:flutter/material.dart';
import 'package:flutty_components/themes/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl;
  final String? imageText;

  const CustomCardType2({super.key, required this.imageUrl, this.imageText});

  @override
  Widget build(BuildContext context) {
    return Card(
      //el anti alias hace que las tarjetas sean iguales que el padre
      clipBehavior: Clip.antiAlias,

      //para formar mas redondeo de los bordes
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

      //elevation son efectos de las sombras
      elevation: 30,

      //color de las sombra y se hace un poco mas transparente
      shadowColor: AppTheme.primary.withOpacity(0.7),

      child: Column(children: [
        FadeInImage(
          //acordarse  seguir identacion correcta en pubspec.yaml
          placeholder: const AssetImage('assets/img/loading.gif'),

          //la que llega de url
          image: NetworkImage(imageUrl),
          width: double.infinity,
          height: 230,
          fadeInDuration: const Duration(milliseconds: 300),
          fit: BoxFit.cover,
        ),

        //logic for footer
        if (imageText != null)
          Container(
            alignment: AlignmentDirectional.center,
            padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
            child: Text(imageText!),
          )
      ]),
    );
  }
}
