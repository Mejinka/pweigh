import 'dart:async';
import 'package:flutter/foundation.dart';

class TimerManager extends ChangeNotifier {
  Timer? _timer;
  ValueNotifier<bool> isLoggedInStatus = ValueNotifier(false);

  TimerManager() {
    isLoggedInStatus.addListener(_onLoggedInStatusChanged);
  }
  void setLoggedInStatus(bool isLoggedIn) {
    isLoggedInStatus.value = isLoggedIn;
  }

  void _onLoggedInStatusChanged() async {
    if (!isLoggedInStatus.value) {
      stopTimer();
    }
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(hours: 1), (Timer timer) async {});
  }

  void stopTimer() {
    if (_timer != null) {
      _timer!.cancel();
      _timer = null;
    }
  }

  @override
  void dispose() {
    stopTimer();
    super.dispose();
  }
}
