sealed class CounterEvent {}

final class CounterIncrementEvent extends CounterEvent {}

final class CounterDecrementEvent extends CounterEvent {}

final class CounterResetEvent extends CounterEvent {}
