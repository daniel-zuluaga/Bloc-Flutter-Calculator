part of 'calculator_bloc.dart';


class CalculatorState {

  final String mathResults;
  final String firstNumber;
  final String secondNumber;
  final String operation;

  CalculatorState({
    this.mathResults = "100", 
    this.firstNumber = "10", 
    this.secondNumber = "10", 
    this.operation = "x"
  });

  copyWith({
    String? mathResults,
    String? firstNumber,
    String? secondNumber,
    String? operation,
  }) => CalculatorState(
    mathResults: mathResults ?? this.mathResults,
    firstNumber: firstNumber ?? this.firstNumber,
    secondNumber: secondNumber ?? this.secondNumber,
    operation: operation ?? this.operation
  );

}

