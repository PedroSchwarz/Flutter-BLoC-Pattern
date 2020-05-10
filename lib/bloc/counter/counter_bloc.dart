import 'dart:async';
import './counter_event.dart';

class CounterBloc {
  // State which will be listen
  int _counter = 0;
  // Stream controller for the state
  final _counterStateController = StreamController<int>();
  // State value sink
  StreamSink<int> get _inCounter => _counterStateController.sink;
  // State value stream whick will be listen to in the UI
  Stream<int> get counter => _counterStateController.stream;
  // Stream controller for the events
  final _counterEventController = StreamController<CounterEvent>();
  // Event value sink
  Sink<CounterEvent> get counterEventSink => _counterEventController.sink;
  // Contructor
  CounterBloc() {
    // Init events listener
    _counterEventController.stream.listen(_mapEventToState);
  }
  // Method to get the event and change the state
  void _mapEventToState(CounterEvent event) {
    if (event is IncrementEvent) {
      _counter++;
    }
    if (event is DecrementEvent) {
      _counter--;
    }
    _inCounter.add(_counter);
  }

  // Method to close the streams
  void dispose() {
    _counterStateController.close();
    _counterEventController.close();
  }
}
