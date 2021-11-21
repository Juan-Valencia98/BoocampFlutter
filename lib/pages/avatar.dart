import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            Container(
                padding: EdgeInsets.all(6.0),
                child: CircleAvatar(
                  backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
                )),
            Container(
                padding: EdgeInsets.all(6.0),
                child: CircleAvatar(
                  child: Text('HP'),
                  backgroundColor: Colors.amber,
                )),
          ],
          title: Text(
            'Avatars',
            strutStyle: StrutStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: FadeInImage(
            image: NetworkImage('https://i.pravatar.cc/300'),
            placeholder: AssetImage('assets/placeholder.gif'),
            fadeInDuration: Duration(milliseconds: 200),
          ),
        ));
  }
}
