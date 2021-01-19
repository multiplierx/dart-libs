import 'dart:async';

class DebouncerHelper {
  final Duration duration;
  Timer _timer;

  DebouncerHelper(this.duration);

  void run(Function action) {
    if (_timer?.isActive ?? false) {
      _timer.cancel();
    }

    _timer = Timer(duration, action);
  }
}
