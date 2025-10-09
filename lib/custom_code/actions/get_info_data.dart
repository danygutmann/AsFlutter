// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> getInfoData(BuildContext context) async {
  try {
    String Info = "";
    final response = await http
        .get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=I"));

    if (response.statusCode == 200) {
      final splitted = response.body.trim().split('|');
      Info = splitted[0] + " " + splitted[1];
      FFAppState().update(() {
        FFAppState().currentStatus = Info;
      });
    }
  } catch (e) {}
}
