import 'package:bytebank/components/home_components/item_transferencia_item.dart';
import 'package:bytebank/data/models/transferencia_model.dart';
import 'package:flutter/material.dart';
import './formulario_referencia.dart';

class ListaTransferencias extends StatefulWidget {
  Function test;

  @override
  _ListaTransferenciasState createState() => _ListaTransferenciasState();
}

class _ListaTransferenciasState extends State<ListaTransferencias> {
  final List<TransferenciaModel> _transferencias = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
          Future<TransferenciaModel> future = Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) => FormularioTransferencia()));

          future.then((value) {
            this._transferencias.add(value);
            setState(() {});
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
