import 'package:flutter/material.dart';
import 'dart:math';

class CardsPage extends StatelessWidget {
  final _godFatherDB = <int, String>{
    1: 'https://picsum.photos/id/23/200/300',
    2: 'https://picsum.photos/id/43/200/300',
    3: 'https://picsum.photos/id/12/200/300',
    4: 'https://picsum.photos/id/3/200/300',
    5: 'https://picsum.photos/id/56/200/300'
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cards'),
          backgroundColor: Colors.black,
        ),
        body: ListView(
          padding: EdgeInsets.all(20.0),
          children: [
            _cardsOne(),
            SizedBox(
              height: 30.0,
            ),
            _cardsTwo(),
            SizedBox(
              height: 30.0,
            ),
            _cardsOne(),
            SizedBox(
              height: 30.0,
            ),
            _cardsTwo(),
            SizedBox(
              height: 30.0,
            ),
            _cardsOne(),
            SizedBox(
              height: 30.0,
            ),
            _cardsTwo(),
            SizedBox(
              height: 30.0,
            ),
            _cardsOne(),
            SizedBox(
              height: 30.0,
            ),
            _cardsTwo(),
            SizedBox(
              height: 30.0,
            ),
          ],
        ));
  }

  Widget _cardsOne() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Icon(Icons.photo_album, color: Colors.black),
            title: Text('Titulo'),
            subtitle: Text('Aqui va la descripcion ....'),
          )
        ],
      ),
    );
  }

  Widget _cardsTwo() {
    String? _godf = _theGodFather();
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50.0),
        ),
        shadowColor: Colors.red,
        child: Column(
          children: [
            FadeInImage(
              placeholder: AssetImage('assets/placeholder.gif'),
              image: NetworkImage(_godf!),
            )
          ],
        ));
  }

  String? _theGodFather() {
    return _godFatherDB[random(1, 5)];
  }

  random(min, max) {
    var rn = new Random();
    return min + rn.nextInt(max - min);
  }
}
