import 'package:equatable/equatable.dart';
import 'package:flutter_view_model/flutter_view_model.dart';
part 'counterviewmodel_event.dart';
part 'counterviewmodel_state.dart';

class Counterviewmodel
    extends BaseModel<CounterviewmodelEvent, CounterviewmodelState> {
  Counterviewmodel() : super(CounterviewmodelInitialState(0));

  @override
  Future<void> mapEventToState(CounterviewmodelEvent event) async {
    var initialCounter =
        (this.state.value as CounterviewmodelInitialState).counter;
    if (event is Increment)
      addState(CounterviewmodelInitialState(initialCounter + 1));
    else
      addState(CounterviewmodelInitialState(initialCounter - 1));
  }
}
