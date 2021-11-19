import 'package:flutter/material.dart';
import '../utils/icon.dart';
import '../providers/menu.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
        'ListView',
      )),
      body: _listCustom(),
    );
  }
}

Widget _listCustom() {
  return FutureBuilder(
      future: menuProvider.loadData(),
      initialData: [],
      builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
        print('FutureBuilder: $snapshot');
        print(snapshot.data);
        return ListView(
          children: _itemsLista(snapshot.data, context),
        );
      });
}

List<Widget> _itemsLista(List<dynamic>? data, BuildContext context) {
  List<Widget> optionMenu = new List<Widget>.empty(growable: true);
  data!.forEach((element) {
    final widgetTmp = ListTile(
      title: Text(element['texto']),
      onTap: () {
        Navigator.pushNamed(context, element['ruta']);
      },
      leading: getIcon(element['icon']),
      trailing: Icon(Icons.more_vert),
      subtitle: Text(element['subtexto']),
      tileColor: Colors.green[50],
    );
    optionMenu.add(widgetTmp);
  });
  return optionMenu;
}
