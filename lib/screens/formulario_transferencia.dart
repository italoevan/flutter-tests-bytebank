import 'package:bytebank/data/models/transferencia_model.dart';
import 'package:flutter/material.dart';

class FormularioTransferencia extends StatelessWidget {
  final TextEditingController _controladorCampoConta =
      new TextEditingController();
  final TextEditingController _controladorValor = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criando Transferência'),
      ),
      body: Container(
        padding: new EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              controller: _controladorCampoConta,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                  labelText: 'Número da conta', hintText: '0000'),
            ),
            Divider(
              color: Colors.transparent,
            ),
            TextField(
              controller: _controladorValor,
              keyboardType: TextInputType.number,
              style: TextStyle(fontSize: 16),
              decoration: InputDecoration(
                  labelText: 'Valor',
                  hintText: '0000',
                  prefixIcon: Icon(Icons.monetization_on)),
            ),
            Divider(
              color: Colors.transparent,
            ),
            ElevatedButton(
              onPressed: () => createTransfer(context),
              style: ElevatedButton.styleFrom(),
              child: Text('Salvar'),
            )
          ],
        ),
      ),
    );
  }

  void createTransfer(BuildContext context) {
    final String numeroConta = _controladorCampoConta.text;
    final String numeroValor = _controladorValor.text;

    

    if (numeroValor.isEmpty || numeroConta.isEmpty) {
      final snack = SnackBar(content: Text('O valor não pode ser nulo'));
      ScaffoldMessenger.of(context).showSnackBar(snack);
      return;
    }

    TransferenciaModel model = new TransferenciaModel(numeroValor, numeroConta);
    Navigator.pop(context, model);
    
  }
}
