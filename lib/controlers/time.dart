import 'dart:async';
import 'package:flutter/foundation.dart';

import '../api.dart';

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
      String? username = await getUsername();
      print('O usuário $username deslogou');
      stopTimer();
    }
  }

  void startTimer() {
    _timer = Timer.periodic(Duration(hours: 1), (Timer timer) async {
      String? username = await getUsername();
      print('o usuario $username' ' está logado');
    });
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
