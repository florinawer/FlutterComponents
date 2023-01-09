import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mai mult mai mult mai mult'),
      ),
      body: Center(
          child: ElevatedButton(
              onPressed: () => displayDialog(
                    context,
                  ), //hace referencia al metodo, no lo ejecuta
              //el diseño del boton lo pilla desde app_theme ya que todos los botones de este tipo se han determinado con un estilo
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text('Show Alert', style: TextStyle(fontSize: 15)),
              ))),
      floatingActionButton: FloatingActionButton(
          //backgroundColor: Colors.purple,
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }

  void displayDialog(BuildContext context) {
    showDialog(
        barrierDismissible:
            false, //si pulsas fuera del pop up se cierra estando a true
        context: context,
        builder: (context) {
          return AlertDialog(
            elevation: 5,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            title: const Text('Alert jumped'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text('Alert important content'),
                SizedBox(height: 10),
                FlutterLogo(
                  size: 100,
                )
              ],
            ),
            actions: [
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('Cancel'))
            ],
          );
        });
  }
}
