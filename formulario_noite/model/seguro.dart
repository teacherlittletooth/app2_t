class Seguro {
  String? _control;
  String? _seg;
  int? _radioSeg;
  bool? _testemunhas, _contratada, _contratante, _vip;

  Seguro(
    this._control,
    this._seg,
    this._radioSeg,
    this._testemunhas,
    this._contratada,
    this._contratante,
    this._vip
  );

  @override
  String toString() {
    return "Nome do seguro: $_control\n" +
           "Tipo: $_seg\n" +
           "Categoria: $_radioSeg\n" +
           "Assinaturas:\n" +
           "Testemunhas: $_testemunhas\n" +
           "Contratada: $_contratada\n" +
           "Contratante: $_contratante\n" +
           "Seguro VIP? $_vip";
  }
}
