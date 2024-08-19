import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:The_Coder_Test_Lab/counter/counter_bloc/counter_event.dart';
import 'package:The_Coder_Test_Lab/counter/counter_bloc/counter_state.dart';


class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counter: 0)) {
    on<CounterIncrementEvent>(
        (event, emit) => emit(CounterState(counter: state.counter + 1)));

    on<CounterDecrementEvent>(
        (event, emit) => emit(CounterState(counter: state.counter - 1)));

    on<CounterResetEvent>((event, emit) => emit(CounterState(counter: 0)));
  }
}
