import 'dart:convert';
import 'dart:io';


class ConsoleUtils{
  
  static lerStringComFrase(String text){
    print(text);
    return stdin.readLineSync(encoding: utf8)?? "";
  }

  static double lerDoubleComFrase(String text){
    do{
      try{
        var value = double.parse(lerStringComFrase(text));
        if(value>=0){
          return value;
        }
      } catch(e){
        print("digite um número válido");
      }
    }while(true);
  }

}