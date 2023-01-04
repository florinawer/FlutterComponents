import 'package:flutter/material.dart';
import 'package:flutty_components/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'stf in plm',

        //se trae del AppRoutes la variable con valor de la ruta inicial
        initialRoute: AppRoutes.initialRoute,

        //se trae todas las rutas de AppRoutes
        routes: AppRoutes.getAppRoutes(),

        //donde redirige si la ruta no existe
        onGenerateRoute: AppRoutes.onGenerateRoute);
  }
}
