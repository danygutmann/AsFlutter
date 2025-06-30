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
  int currLineNumber = FFAppState().CurrentDeviceInfo.currentLineNumber;
  if (FFAppState().CurrentDeviceInfo.line05Vissible) lastLineAddress = "040";
  if (FFAppState().CurrentDeviceInfo.line04Vissible) lastLineAddress = "030";
  if (FFAppState().CurrentDeviceInfo.line03Vissible) lastLineAddress = "020";
  if (FFAppState().CurrentDeviceInfo.line02Vissible) lastLineAddress = "010";
  if (FFAppState().CurrentDeviceInfo.line01Vissible) lastLineAddress = "000";

  // delete current line

  String result = "Error";
  try {
    String url =
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=" +
            address +
            "255255255255255255255255255255255";
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      result = "deleting last line OK";
    } else {
      result = "deleting last line NOK";
    }
  } catch (e) {
    result = "deleting last line NOK " + e.toString();
  }

  // if last line, easy
  if (FFAppState().CurrentDeviceInfo.currentLineIsLast) {
    // all is done
  } else {
    // not last line, loop over lines to move forward
    try {
      for (int i = currLineNumber; i < 5; i++) {
        String dst = "";
        String src = "";
        String data = "";
        if (i == 2) {
          dst = "010";
          src = "020";
        }
        if (i == 3) {
          dst = "020";
          src = "030";
        }
        if (i == 4) {
          dst = "030";
          src = "040";
        }
        if (i == 5) {
          dst = "040";
          src = "050";
        }
        String url =
            "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=" +
                address +
                data;
        var erg = await http.get(Uri.parse(url));
      }
      result = "OK";
    } catch (e) {
      result = "NOK";
    }
  }
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(result)),
  );
}
