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

Future deleteLine(
  BuildContext context,
) async {
  String lastLineAddress = "999";

  // get info
  String address = FFAppState().CurrentDeviceInfo.currentLineAddress;
  if (FFAppState().CurrentDeviceInfo.line05Vissible) lastLineAddress = "040";
  if (FFAppState().CurrentDeviceInfo.line04Vissible) lastLineAddress = "030";
  if (FFAppState().CurrentDeviceInfo.line03Vissible) lastLineAddress = "020";
  if (FFAppState().CurrentDeviceInfo.line02Vissible) lastLineAddress = "010";
  if (FFAppState().CurrentDeviceInfo.line01Vissible) lastLineAddress = "000";

  if (address == lastLineAddress) {
    // send data
    try {
      String url =
          "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=" +
              address +
              "255255255255255255255255255255255";
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('OK')),
        );
      } else {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('NOK ')),
        );
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Error at sending: $e')),
      );
    }
  } else {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('deleting ist just for last line possible')),
    );
  }
}
