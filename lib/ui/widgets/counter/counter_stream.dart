import 'package:bloc_pattern/bloc/counter/counter_bloc.dart';
import 'package:flutter/material.dart';

class CounterStream extends StatelessWidget {
  const CounterStream({Key key, this.bloc}) : super(key: key);

  final CounterBloc bloc;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: bloc.counter,
      initialData: 0,
      builder: (BuildContext context, AsyncSnapshot<int> snapshot) {
        return Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'You have pushed the button this many times:',
              ),
              Text(
                '${snapshot.data}',
                style: Theme.of(context).textTheme.headline4,
              ),
            ],
          ),
        );
      },
    );
  }
}
