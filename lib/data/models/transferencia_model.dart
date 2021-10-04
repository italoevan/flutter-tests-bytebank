class TransferenciaModel {
  String valor;
  String numeroConta;

  TransferenciaModel(this.valor, this.numeroConta);

  @override
  String toString() {
    return 'Numero da conta: ${this.numeroConta}';
  }
}
