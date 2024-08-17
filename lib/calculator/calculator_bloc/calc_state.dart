abstract class CounterState {}

class InitialCounterState extends CounterState {}

class NumberAddedState extends CounterState {}
class NumberSubstractedState extends CounterState {}

class SumCalculatedState extends CounterState {
  final int sum;
  SumCalculatedState(this.sum);
}
