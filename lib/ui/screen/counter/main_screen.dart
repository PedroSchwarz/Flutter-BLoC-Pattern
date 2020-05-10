import 'package:bloc_pattern/bloc/counter/counter_bloc.dart';
import 'package:bloc_pattern/ui/widgets/counter/counter_actions.dart';
import 'package:bloc_pattern/ui/widgets/counter/counter_stream.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  MainScreen({Key key, this.title}) : super(key: key);

  final String title;
  final _bloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: CounterStream(bloc: _bloc),
      ),
      floatingActionButton: CounterActions(bloc: _bloc),
    );
  }
}
