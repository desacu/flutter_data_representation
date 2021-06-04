import 'package:rxdart/rxdart.dart';

enum StreamEvent {
  incrementCounter,
}

class StreamBloc {
  final PublishSubject<StreamEvent> _eventStream = PublishSubject<StreamEvent>();
  final BehaviorSubject<int> _counterController = BehaviorSubject<int>();

  Stream<int> get count => _counterController.stream;
  int _currentCount = 0;

  StreamBloc() {
    _eventStream.stream.listen((event) => onEvent(event));
  }

  void dispose() {
    _eventStream.close();
    _counterController.close();
  }

  void dispatch(StreamEvent event) {
    try {
      _eventStream.add(event);
    } catch (e) {
      print('Error: $e');
    }
  }

  void onEvent(StreamEvent event) {
    switch (event) {
      case StreamEvent.incrementCounter:
        _incrementCounter();
        break;
      default:
    }
  }

  void _incrementCounter() {
    _counterController.add(_currentCount++);
  }
}
