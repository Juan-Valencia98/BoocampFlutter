import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  String _nombre = '';
  String _email = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Inputs de texto'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.arrow_back),
        onPressed: () {
          Navigator.pop(context);
        },
        backgroundColor: Colors.black,
      ),
      body: ListView(
        padding: EdgeInsets.all(20),
        children: [
          _createInput(),
          Divider(),
          _createEmail(),
          Divider(),
          _createPassword(),
          Divider(),
          _createPerson(),
        ],
      ),
    );
  }

  Widget _createInput() {
    return TextField(
        autofocus: true,
        textCapitalization: TextCapitalization.sentences,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          counter: Text('Letras : ${_nombre.length}'),
          hintText: 'Escribe aqui tu nombre',
          labelText: 'Nombres Apellidos',
          suffixIcon: Icon(Icons.accessibility, color: Colors.blue),
        ),
        onChanged: (inputData) {
          _nombre = inputData;
          print('Este es el nombre ingresado $_nombre');
          setState(() {
            _nombre = inputData;
          });
        });
  }

  Widget _createPerson() {
    return ListTile(
      title: Text('Nombre: es: $_nombre'),
      subtitle: Text('Email es : $_email'),
    );
  }

  Widget _createEmail() {
    return TextField(
        keyboardType: TextInputType.emailAddress,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: 'Escribe aqui correo electronico',
          labelText: 'Escrive tu correo.',
          suffixIcon: Icon(Icons.alternate_email, color: Colors.blue),
          icon: Icon(Icons.email, color: Colors.blue),
        ),
        onChanged: (inputData) {
          setState(() => _email = inputData);
        });
  }

  Widget _createPassword() {
    return TextField(
        obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          hintText: 'Escribe aqui Correro Electronico',
          labelText: 'Contrasenia',
          helperText: 'Escribe tu contrasenia',
          suffixIcon: Icon(Icons.password, color: Colors.blue),
          icon: Icon(Icons.password_rounded, color: Colors.blue),
        ),
        onChanged: (inputData) {
          setState(() => _email = inputData);
        });
  }
}
