part of 'counterviewmodel_bloc.dart';

abstract class CounterviewmodelEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class Increment extends CounterviewmodelEvent{}


class Decrement extends CounterviewmodelEvent{}