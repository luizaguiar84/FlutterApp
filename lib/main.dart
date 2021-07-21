import 'package:bytebank/screens/transferencias/lista.dart';
import 'package:flutter/material.dart';

void main() => runApp(Dashboard());

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text(
          'Dashboard',
        )),
      ),
    );
  }
}

class ByteBankApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blue[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          )),
      home: ListaTransferencias(),
    );
  }
}
