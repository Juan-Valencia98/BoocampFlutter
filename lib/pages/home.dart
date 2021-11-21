import 'package:flutter/material.dart';
import '../providers/menu.dart';
import '../utils/icon.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text(
            'Home Page',
            strutStyle: StrutStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
            ),
          ),
          backgroundColor: Colors.orange),
      body: _listCustom(),
    );
  }
}

Widget _listCustom() {
  return FutureBuilder(
    future: menuProvider.loadData(),
    initialData: [],
    builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapsnot) {
      return ListView(
        children: _itemsLista(snapsnot.data, context),
      );
    },
  );
}

List<Widget> _itemsLista(List<dynamic>? data, BuildContext context) {
  List<Widget> optionMenu = List<Widget>.empty(growable: true);
  data!.forEach((element) {
    final widgetTmp = ListTile(
      title: Text(element['texto']),
      onTap: () {
        Navigator.pushNamed(context, element['ruta']);
      },
      leading: getIcon(element['icon']),
      trailing: const Icon(Icons.more_vert),
      subtitle: Text(element['subtexto']),
      tileColor: Colors.orange[50],
    );
    optionMenu.add(widgetTmp);
  });
  return optionMenu;
}
