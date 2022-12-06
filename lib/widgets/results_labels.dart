import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:bloc_flutter_calculator/bloc/calculator/calculator_bloc.dart';
import 'package:bloc_flutter_calculator/widgets/widgets.dart';

class ResultsLabels extends StatelessWidget {
  const ResultsLabels({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CalculatorBloc, CalculatorState>(
      builder: (context, state) {
        return Column(
          children: [
            SubResult(text: state.firstNumber),
            SubResult(text: state.operation),
            SubResult(text: state.secondNumber),
            LineSeparator(),
            MainResultText(text: state.mathResults),
          ],
        );
      },
    );
  }
}
