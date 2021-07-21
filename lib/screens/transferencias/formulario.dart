import 'package:bytebank/components/Editor.dart';
import 'package:bytebank/models/transferencia.dart';
import 'package:flutter/material.dart';

const _tituloAppBar = 'Formulário de transferências';

const _rotuloCampoValor = 'Numero da conta';
const _dicaCampoValor = '1234';
const _rotuloValor = 'Valor';
const _dicaValor = '0.00';

const _textoBotaoConfirmar = 'Confirmar';

class FormularioTransferencias extends StatelessWidget {
  final TextEditingController _controllerNumeroConta = TextEditingController();
  final TextEditingController _controllerValor = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(_tituloAppBar),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Editor(
                controller: _controllerNumeroConta,
                rotulo: _rotuloCampoValor,
                dica: _dicaCampoValor,
              ),
              Editor(
                controller: _controllerValor,
                rotulo: _rotuloValor,
                dica: _dicaValor,
                icon: Icons.monetization_on,
              ),
              ElevatedButton(
                child: Text(_textoBotaoConfirmar),
                onPressed: () => _criaTransferencia(context),
              ),
            ],
          ),
        ));
  }

  void _criaTransferencia(BuildContext context) {
    debugPrint('clicou em confirmar');
    final double numeroConta = double.tryParse(_controllerNumeroConta.text);
    final int valor = int.tryParse(_controllerValor.text);
    if (numeroConta != null && valor != null) {
      final transferenciaCriada = Transferencia(numeroConta, valor);
      debugPrint('Criando Transferencia: $transferenciaCriada');
      Navigator.pop(context, transferenciaCriada);
    }
  }
}
