import 'package:imc_calculator/imc_calculator.dart';
import 'package:imc_calculator/models/CalculadoraIMC.dart';
import 'package:imc_calculator/models/ConsoleUtils.dart';
import 'package:imc_calculator/models/Pessoa.dart';

class Functions{
  
  static cadastro(){
  print("Iniciando o cadastro...");
  String nome = ConsoleUtils.lerStringComFrase("Digite o seu nome");
  double altura = ConsoleUtils.lerDoubleComFrase("Digite sua altura");
  double peso = ConsoleUtils.lerDoubleComFrase("Digite seu peso");
  dataBase.add(Pessoa(nome, altura, peso));
  }

  static consultar(){
    int ind = 0;
    print("Iniciando consulta...");
    String nome = ConsoleUtils.lerStringComFrase("Digite o seu nome para consultar");
    for(var i in dataBase){
      if((i.getNome()).toUpperCase() == nome.toUpperCase()){
        print("Seu IMC é ${CalculadoraIMC.calc(i)}");
        ind = 1;
        break;
      }
    }
    if(ind == 0){
      print("Usuário não encontrado");
    }
  }


  static alterar(){
    int ind = 0;
    print("Iniciando consulta...");
    String nome = ConsoleUtils.lerStringComFrase("Digite o seu nome para alterar");
    for(var i in dataBase){
      if((i.getNome()).toUpperCase() == nome.toUpperCase()){
        double novoPeso = ConsoleUtils.lerDoubleComFrase("Digite o novo peso");
        double novaAltura = ConsoleUtils.lerDoubleComFrase("Digite a nova altura");
        i.setPeso(novoPeso);
        i.setAltura(novaAltura);
        break;
      }
    }
    if(ind == 0){
      print("Usuário não encontrado");
    }
  }
}