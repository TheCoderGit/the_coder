abstract class CounterEvent {}

class AddNumberEvent extends CounterEvent {
  final int number;
  AddNumberEvent(this.number);
}

class SubstracteNumberEvent extends CounterEvent {
  final int number;
  SubstracteNumberEvent(this.number);
}

class CalculateSumEvent extends CounterEvent {
  final int secondNumber;
  CalculateSumEvent(this.secondNumber);
}
