part of 'calculator_bloc.dart';

@immutable
abstract class CalculatorEvent {}

class ResetACEvent extends CalculatorEvent{}

class AddNumberEvent extends CalculatorEvent{
  final String number;

  AddNumberEvent(this.number);
  
}

class ChangeNumberSignEvent extends CalculatorEvent{}

class DeleteLastNumberEvent extends CalculatorEvent{}

class OperationEntryEvent extends CalculatorEvent{
  final String operation;

  OperationEntryEvent(this.operation);
}

class CalculateResultEvent extends CalculatorEvent{}

