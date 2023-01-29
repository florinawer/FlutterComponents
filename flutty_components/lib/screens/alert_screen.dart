import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AlertScreen extends StatelessWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(126, 153, 96, 96),
      appBar: AppBar(
        title: const Text('Mai mult mai mult mai mult'),
      ),
      body: Center(      
          child: ElevatedButton(            
              onPressed: () => !Platform.isAndroid
                  //decide si estas ejecutando en android o en iphone y llama al metodo
                  ? displayDialogAndroid(context)
                  : displayDialogIOS(context),
              
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                child: Text('Show Alert', style: TextStyle(fontSize: 15)),              
              ))
              ),
      floatingActionButton: FloatingActionButton(
          //backgroundColor: Colors.purple,
          child: const Icon(Icons.close),
          onPressed: () => Navigator.pop(context)),
    );
  }

  void displayDialogIOS(BuildContext context) {
    showCupertinoDialog(
        barrierDismissible: true,
        context: context,
        builder: (context) {
          return CupertinoAlertDialog(
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
                  child: const Text('Cancel',
                      style: TextStyle(color: Colors.red))),
              TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'))
            ],
          );
        });
  }

  void displayDialogAndroid(BuildContext context) {
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
