import 'package:bloc_pattern/bloc/counter/counter_bloc.dart';
import 'package:bloc_pattern/bloc/counter/counter_event.dart';
import 'package:flutter/material.dart';

class CounterActions extends StatelessWidget {
  const CounterActions({Key key, this.bloc}) : super(key: key);

  final CounterBloc bloc;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: () => bloc.counterEventSink.add(IncrementEvent()),
          tooltip: 'Increment',
          child: Icon(Icons.add),
        ),
        SizedBox(
          width: 10,
        ),
        FloatingActionButton(
          onPressed: () => bloc.counterEventSink.add(DecrementEvent()),
          tooltip: 'Decrement',
          child: Icon(Icons.remove),
        ),
      ],
    );
  }
}
