class Supermercado {
  String? _superControl;
  String? _diaDaSemana;
  int? _pgto;
  bool? _bom, _bonito, _barato, _recomenda;

  Supermercado(
    this._superControl,
    this._diaDaSemana,
    this._pgto,
    this._bom,
    this._bonito,
    this._barato,
    this._recomenda
  );

  @override
  String toString() {
    return "Mercado: $_superControl\n"+
    "Dia de compra: $_diaDaSemana\n"+
    "Forma de pagamento: $_pgto\n"+
    "Bom? $_bom / Bonito? $_bonito / Barato? $_barato\n"+
    "Recomenda? $_recomenda";
  }
}
