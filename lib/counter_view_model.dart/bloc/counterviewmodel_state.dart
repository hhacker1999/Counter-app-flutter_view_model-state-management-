part of 'counterviewmodel.dart';

abstract class CounterviewmodelState extends Equatable {
  const CounterviewmodelState();
  @override
  List<Object?> get props => [];
}

class CounterviewmodelInitialState extends CounterviewmodelState {
  final int counter;
  const CounterviewmodelInitialState(this.counter);
}
