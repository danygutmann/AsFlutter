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

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.info = response.body;
        FFAppState().CurrentDeviceInfo.appStatusLine = response.body;
        FFAppState().currentStatus = response.body;
      });
      // final erg = response.body;
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('set time failed')),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $e')),
    );
  }
}
