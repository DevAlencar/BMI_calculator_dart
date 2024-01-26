import 'package:imc_calculator/models/Pessoa.dart';
import 'dart:math';

class CalculadoraIMC{
  
  static double calc(Pessoa pessoa){
    return (pessoa.getPeso()/pow(pessoa.getAltura(),2));
  }

}