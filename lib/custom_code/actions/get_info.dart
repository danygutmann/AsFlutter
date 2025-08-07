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

Future<void> getInfo(BuildContext context) async {
  String url = "http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=I";
  FFAppState().CurrentDeviceInfo.appStatusLine = " ";
  return;

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final splitted = response.body.trim().split('|');
      String Info = splitted[0] + " " + splitted[1];

      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.appStatusLine = Info;
      });
      // final erg = response.body;
    } else {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.appStatusLine = " ";
      });
    }
  } catch (e) {
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.appStatusLine = " ";
    });
  }
}
