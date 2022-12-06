import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'calculator_event.dart';
part 'calculator_state.dart';

class CalculatorBloc extends Bloc<CalculatorEvent, CalculatorState> {
  CalculatorBloc() : super(CalculatorState()) {
    on<ResetACEvent>((event, emit) {
      emit(CalculatorState(
        firstNumber: "0",
        secondNumber: "0",
        mathResults: "0",
        operation: "+"
      ));
    });

    on<AddNumberEvent>((event, emit) {
      emit(state.copyWith(
        mathResults: (state.mathResults == "0") 
              ? event.number
              : state.mathResults + event.number,
      ));
    });

    on<ChangeNumberSignEvent>((event, emit) {
      emit(state.copyWith(
        mathResults: state.mathResults.contains("-")
                      ? state.mathResults.replaceFirst("-", "")
                      : "-${state.mathResults}"
      ));
    });

    on<DeleteLastNumberEvent>((event, emit) {
      emit(state.copyWith(
        mathResults: state.mathResults.length > 1
                    ? state.mathResults.substring(0, state.mathResults.length -1)
                    : "0"
      ));
    });

    on<OperationEntryEvent>((event, emit){
      emit(state.copyWith(
        firstNumber: state.mathResults,
        mathResults: "0",
        operation: event.operation,
        secondNumber: "0"
      ));
    });

    on<CalculateResultEvent>((event, _){

      final double num1 = double.parse(state.firstNumber);
      final double num2 = double.parse(state.mathResults);

      switch (state.operation) {
        case "+":
          state.copyWith(
            secondNumber: state.mathResults,
            mathResults: "${num1 + num2}"
          );
        break;
        default:
            state;
        break;
      }

      // emit(state.copyWith(
      //   operation: state.operation
      // ));
    });
  }
}
