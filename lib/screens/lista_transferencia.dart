import 'package:bytebank/components/home_components/item_transferencia_item.dart';
import 'package:bytebank/data/models/transferencia_model.dart';
import 'package:flutter/material.dart';
import 'formulario_transferencia.dart';

class ListaTransferencias extends StatefulWidget {
  Function test;

  @override
  _ListaTransferenciasState createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  final List<TransferenciaModel> _transferencias = [];

  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        title: Text('ByteBank'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: new ListView.builder(
          itemCount: _transferencias.length,
          itemBuilder: (context, index) => ItemTransferencia(
            model: _transferencias[index],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FormularioTransferencia()))
              .then((value) => _atualiza);
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void _atualiza(var value) {
    if (value != null) {
      this._transferencias.add(value);
      setState(() {});
    }
  }
}
