import 'package:bytebank/data/models/transferencia_model.dart';
import 'package:flutter/material.dart';

class ItemTransferencia extends StatelessWidget {
  TransferenciaModel model;

  ItemTransferencia({this.model});

  @override
  Widget build(BuildContext context) {
    return Card(
        child: ListTile(
      leading: Icon(Icons.monetization_on),
      title: Text(model.valor),
      subtitle: Text(model.numeroConta),
    ));
  }
}
