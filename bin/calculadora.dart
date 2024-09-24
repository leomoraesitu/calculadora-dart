import 'dart:convert';
import 'dart:io';

void main(List<String> arguments){
  print("CALCULADORA");

  print("Informe o primeiro número:");
  var line = stdin.readLineSync(encoding: utf8);
  var numero1 = double.parse(line ?? "0");

  print("Informe o segundo número:");
  line = stdin.readLineSync(encoding: utf8);
  var numero2 = double.parse(line ?? "0");

  print("Informe a operação mateática (+, -, *, /):");
  line = stdin.readLineSync(encoding: utf8);
  var operacao = line ?? "0";

  print (numero1);
  print (numero2);
  print (operacao);

  double resultado = 0;

  switch(operacao){
    case "+": 
    resultado  = numero1 + numero2;
    break;
    case "-": 
    resultado  = numero1 - numero2;
    break;
    case "*": 
    resultado  = numero1 * numero2;
    break;
    case "/": 
    resultado  = numero1 / numero2;
    break;
    
    default:
    print("Operação inválida!");
    exit(0);
  }
  
  print("Operação solicitada: $operacao");
  print("O resultado é: $resultado");

}