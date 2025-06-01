// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

//import '/flutter_flow/custom_functions.dart'; // Imports custom functions

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> setPwm(BuildContext context) async {
  String url =
      "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=PWMSET&LINES=2&DATA=255020";
  try {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.pwm = "5100";
      });
    }
  } catch (e) {
    return;
  }
}
