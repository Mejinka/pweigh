// ignore_for_file: unused_import, depend_on_referenced_packages, avoid_print

import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:intl/intl.dart';
import 'package:universal_html/html.dart' as html;

void collectAndSendInfo() async {
  // Get public IP
  final ipResponse =
      await http.get(Uri.parse('https://api.ipify.org?format=json'));
  final ip = jsonDecode(ipResponse.body)['ip'];

  // Get date and time
  final now = DateTime.now();
  final formatter = DateFormat('yyyy-MM-dd HH:mm:ss');
  final formattedDate = formatter.format(now);

  // Get user agent
  final userAgent = html.window.navigator.userAgent;

  final clientInfo = {
    'ip': ip,
    'date': formattedDate,
    'userAgent': userAgent,
  };

  // Send this info to the server
  final response = await http.post(
    Uri.parse('http://192.168.2.90:5000/save_info'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(clientInfo),
  );

  if (response.statusCode == 200) {
    print('Info sent successfully');
  } else {
    print('Failed to send info');
  }
}

Future<Map<String, dynamic>> getClientInfo() async {
  final response =
      await http.get(Uri.parse('https://api.ipify.org?format=json'));
  final ipData = jsonDecode(response.body);
  final ip = ipData['ip'];

  final currentTime = DateTime.now().toString();

  return {
    'ip': ip,
    'currentTime': currentTime,
  };
}
