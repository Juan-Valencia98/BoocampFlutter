import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  final estilo = new TextStyle(fontSize: 30, color: Colors.red);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        'Titulo del App',
      )),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Texto 1', style: estilo),
            Text(
              'Texto 2',
              style: estilo,
            ),
          ],
        ),
      ),
    );
  }
}
