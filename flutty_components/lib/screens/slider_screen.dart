import 'package:flutter/material.dart';
import 'package:flutty_components/themes/app_theme.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  double _sliderValue = 100;
  bool _sliderEnabled = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Sliders && Checks'),
        ),
        body: Column(
          children: [
            Slider.adaptive(
              min: 50,
              max: 900,
              //te reparte en divisiones
              //divisions: 6,
              activeColor: AppTheme.primary,
              value: _sliderValue,

              //si esta habilitado el checkBox se puede usar el slideBar
              onChanged: _sliderEnabled
                  ? (value) {
                      _sliderValue = value;
                      setState(() {});
                    }
                  : null,
            ),

            SwitchListTile.adaptive(
              value: _sliderEnabled,
              title: const Text('Enable Slide'),
              activeColor: AppTheme.primary,
              onChanged: (value) => setState(() {
                _sliderEnabled = value;
              }),
            ),

            //const AboutListTile(),

            //2 tipos de checkbox feos el tercero es el bonito y mas usado
            /*Checkbox(
              value: _sliderEnabled,
              onChanged: (value) {
                _sliderEnabled = value ?? true;
                setState(() {});
              },
            ),*/

            /*//puedes hacer click en toda la linea aparte de que puedes meterle Titulo
            CheckboxListTile(
              title: const Text('Enable Slide'),
              activeColor: AppTheme.primary,
              value: _sliderEnabled,
              onChanged: (value) => setState(() {
                _sliderEnabled = value ?? true;
              }),
            ),*/

            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                child: Image(
                  image: const NetworkImage(
                      'https://e00-elmundo.uecdn.es/assets/multimedia/imagenes/2022/08/10/16601415554608.jpg'),
                  fit: BoxFit.contain,
                  height: _sliderValue,
                  width: _sliderValue,
                ),
              ),
            ),
          ],
        ));
  }
}
