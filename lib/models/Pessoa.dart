class Pessoa{
  String _nome = "";
  double _altura = 0;
  double _peso = 0;

  Pessoa(String nome, double altura, double peso){
    _nome = nome;
    _altura = altura;
    _peso = peso;
  }

  String getNome(){
    return _nome;
  }

  double getPeso(){
    return _peso;
  }

  double getAltura(){
    return _altura;
  }
  
  setPeso(double peso){
    _peso = peso;
  }

  setAltura(double altura){
    _altura = altura;
  }
}