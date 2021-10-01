import 'package:bytebank/components/home_components/item_transferencia_item.dart';
import 'package:bytebank/data/models/transferencia_model.dart';
import 'package:flutter/material.dart';

class ListaTransferencias extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          ItemTransferencia(
            model: new TransferenciaModel('1000', '2333'),
          ),
          ItemTransferencia(
            model: new TransferenciaModel('1000', '2333'),
          ),
          ItemTransferencia(
            model: new TransferenciaModel('1000', '2333'),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.add),
      ),
    );
  }
}
