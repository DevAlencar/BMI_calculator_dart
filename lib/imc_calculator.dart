import 'dart:io';

import 'package:imc_calculator/models/CalculadoraIMC.dart';
import 'package:imc_calculator/models/ConsoleUtils.dart';
import 'package:imc_calculator/models/Functions.dart';
import 'package:imc_calculator/models/Pessoa.dart';

List<Pessoa> dataBase = [];

void execute(){


  do{
    print("Bem vindo à calculadora de IMC: ");
    String op = ConsoleUtils.lerStringComFrase("Digite 1 para Cadastro, 2 para consultar, 3 para alterar dados e 4 para sair");
    switch (op){
      case "1":
        Functions.cadastro();
        break;
      case "2":
        Functions.consultar();
        break;
      case "3":
        Functions.alterar();
        break;
      case "4":
        print("Saindo...");
        exit(0);
      default:
        print("OPÇÃO INVÁLIDA");
    }
  }while(true);
}
