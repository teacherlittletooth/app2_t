class Carro {
  var _marca;
  var _modelo;

  Carro({var marca, var modelo}){
    this._marca = marca;
    this._modelo = modelo;
  }

  @override
  String toString() {
    return "Marca: ${this._marca}\n"
            "Modelo: ${this._modelo}\n";
  }
}
