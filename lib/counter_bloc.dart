
import 'dart:async';

class CounterBlock {
  int _counter = 0;

  final _counterStateController = StreamController<int>();
  StreamSink<int> get _inCounter => _counterStateController.sink;
  //For state, exposing only a stream which outputs data
  Stream<int> get counter => _counterStateController.stream;
}