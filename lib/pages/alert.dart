import 'package:flutter/material.dart';

class AlertaPage extends StatelessWidget {
  const AlertaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Alerta',
          strutStyle: StrutStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
          ),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Ejecutar Alerta!!'),
          onPressed: () => _mostrarAlert(context),
          style: ElevatedButton.styleFrom(
            primary: Colors.amber,
          ),
        ),
      ),
    );
  }
}

_mostrarAlert(BuildContext context) {
  showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          title: Text('Titulo Alerta!!'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Aqui se mensiona la descripcion...'),
              FlutterLogo(size: 150)
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Button 1'),
            ),
            ElevatedButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Button 2'),
            ),
          ],
        );
      });
}
