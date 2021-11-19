import 'package:bootcampflutter/pages/alerta.dart';
import 'package:bootcampflutter/pages/home.dart';
import 'package:flutter/material.dart';
import 'routes/routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Material App',
        debugShowCheckedModeBanner: false,
        initialRoute: '/',
        routes: getApplicationRouters(),
        onGenerateRoute: (RouteSettings setting) {
          print('Ruta Ejecutada ${setting.name}');
          return MaterialPageRoute(
              builder: (BuildContext context) => AlertaPage());
        });
  }
}
