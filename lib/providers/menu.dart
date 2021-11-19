import 'dart:convert';
import 'package:flutter/services.dart';

class _MenuProvider {
  List<dynamic> options = [];
  _MenuProvider() {
    loadData();
  }
  Future<List<dynamic>> loadData() async {
    final response = await rootBundle.loadString('data/menu.json');
    Map dataMap = json.decode(response);
    options = dataMap['rutas'];
    return options;
  }
}

final menuProvider = new _MenuProvider();
