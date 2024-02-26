import 'dart:io';
import 'dart:async';

class Calculator {
  int add(int a, int b) {
    return a + b;
  }

  int sub(int a, int b) {
    return a - b;
  }

  int mul(int a, int b) {
    return a * b;
  }

  double div(int a, int b) {
    return a / b;
  }
}

void main() {
  Calculator calc = Calculator();
  print("Enter two numbers: ");
  int a = int.parse(stdin.readLineSync()!);
  int b = int.parse(stdin.readLineSync()!);
  print("Enter the operation to be performed: ");
  String op = stdin.readLineSync()!;
  try {
    if (op == '+') {
      print("The sum is: ${calc.add(a, b)}");
    } else if (op == '-') {
      print("The difference is: ${calc.sub(a, b)}");
    } else if (op == '*') {
      print("The product is: ${calc.mul(a, b)}");
    } else if (op == '/') {
      print("The quotient is: ${calc.div(a, b)}");
    } else {
      print("Invalid operation");
    }
  } on IntegerDivisionByZeroException {
    print("Cannot divide by zero");
  } finally {
    Future.delayed(Duration(seconds: 5), () {
      print("Thank you for using the calculator");
    });
  }
}