import 'package:flutter/material.dart';
import '../pages/home.dart';
import '../pages/alerta.dart';

Map<String, WidgetBuilder> getApplicationRouters() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'alerta': (BuildContext context) => AlertaPage(),
  };
}
