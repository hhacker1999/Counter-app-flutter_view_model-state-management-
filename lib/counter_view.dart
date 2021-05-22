import 'package:flutter/material.dart';
import 'package:flutter_view_model/flutter_view_model.dart';
import 'package:flutter_view_model_test/counter_view_model.dart/bloc/counterviewmodel_bloc.dart';

class CounterView extends StatefulWidget {
  @override
  _CounterViewState createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {
  late Counterviewmodel _model;

  @override
  void initState() {
    _model = Counterviewmodel();
    super.initState();
  }

  @override
  void dispose() {
    _model.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <FloatingActionButton>[
          FloatingActionButton(
            onPressed: () => _model.add(
              Increment(),
            ),
            child: Icon(Icons.add),
          ),
          FloatingActionButton(
            onPressed: () => _model.add(
              Decrement(),
            ),
            child: Icon(Icons.remove),
          ),
        ],
      ),
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Counter View Model Example'),
      ),
      body: Center(
        child: ModelConsumer<CounterviewmodelState, Counterviewmodel>(
            builder: (context, state) {
              return Text(
                  (state as CounterviewmodelInitialState).counter.toString());
            },
            listener: (context, state) {
              // ScaffoldMessenger.of(context).showSnackBar(
              //   const SnackBar(
              //     content: Text('State Changed'),
              //   ),
              // );
            },
            model: _model),
      ),
    );
  }
}
