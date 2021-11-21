import 'package:flutter/material.dart';
import 'dart:math';

class ContainerPage extends StatefulWidget {
  ContainerPage({Key? key}) : super(key: key);

  @override
  _ContainerPageState createState() => _ContainerPageState();
}

final random = Random();

class _ContainerPageState extends State<ContainerPage> {
  double _width = 50.0;
  double _heigth = 50.0;
  Color _color = Colors.orange;
  BorderRadius _border = BorderRadius.circular(9.0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contenedor Animado'),
        backgroundColor: Colors.green,
      ),
      body: Center(
          child: AnimatedContainer(
        width: _width,
        height: _heigth,
        decoration: BoxDecoration(color: _color, borderRadius: _border),
        duration: Duration(seconds: 1),
        curve: Curves.fastOutSlowIn,
      )),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.play_circle_fill),
          onPressed: () {
            setState(() {
              _width = random.nextInt(300).toDouble();
              _heigth = random.nextInt(300).toDouble();
              _color = Color.fromRGBO(random.nextInt(256), random.nextInt(256),
                  random.nextInt(256), 1);
              _border = BorderRadius.circular(random.nextInt(100).toDouble());
            });
          }),
    );
  }
}
