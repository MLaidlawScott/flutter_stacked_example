import 'package:stacked/stacked.dart';

class StreamExampleViewModel extends StreamViewModel<int> {
  String get title => "this is the time since epoch in seconds \n $data";

  bool _otherSources = false;

  void swapSources() {
    _otherSources = !_otherSources;
    notifySourceChanged();
  }

  @override
  Stream<int> get stream =>
      _otherSources ? epochUpdates() : epochUpdatesFaster();

  Stream<int> epochUpdates() async* {
    while (true) {
      await Future.delayed(Duration(seconds: 2));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }

  Stream<int> epochUpdatesFaster() async* {
    while (true) {
      await Future.delayed(Duration(milliseconds: 300));
      yield DateTime.now().millisecondsSinceEpoch;
    }
  }
}
