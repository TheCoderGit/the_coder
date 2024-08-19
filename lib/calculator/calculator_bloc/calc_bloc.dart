import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:The_Coder_Test_Lab/calculator/calculator_bloc/calc_event.dart';
import 'package:The_Coder_Test_Lab/calculator/calculator_bloc/calc_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int _firstNumber = 0;
  String operation = "";

  CounterBloc() : super(InitialCounterState()) {
    on<AddNumberEvent>((event, emit) {
      _firstNumber = event.number;
      operation = "plus";
      emit(NumberAddedState());
    });

    on<SubstracteNumberEvent>((event, emit) {
      _firstNumber = event.number;
      operation = "minus";
      emit(NumberSubstractedState());
    });

    on<CalculateSumEvent>((event, emit) {
      var sum = 0;
      if (operation == 'plus') {
        sum = _firstNumber + event.secondNumber;
      } else if (operation == 'minus') {
        sum = _firstNumber - event.secondNumber;
      }

      emit(SumCalculatedState(sum));
    });
  }
}
