import '../pages/home.dart';
import '../pages/alert.dart';
import '../pages/avatar.dart';
import '../pages/card.dart';
import '../pages/container.dart';
import '../pages/input.dart';
import 'package:flutter/material.dart';

Map<String, WidgetBuilder> getApplicationsRouters() {
  return <String, WidgetBuilder>{
    '/':          (BuildContext context) => HomePage(),
    'alert':      (BuildContext context) => AlertaPage(),
    'avatar':     (BuildContext context) => AvatarPage(),
    'card':       (BuildContext context) => CardsPage(),
    'container':  (BuildContext context) => ContainerPage(),
    'inputs':     (BuildContext context) => InputPage()
  };
}
