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
  String result = "Delete line ";
  int deletedLine = FFAppState().CurrentDeviceInfo.currentLineNumber;
  int linesTotal = FFAppState().CurrentDeviceInfo.linesTotal;
  bool isLastLine = FFAppState().CurrentDeviceInfo.currentLineIsLast;
  String address = "";
  String data = "";
  result += deletedLine.toString() + ": move lines ";

  for (int i = 1; i < 6; i++) {
    if (i >= deletedLine) {
      if (i == 1) {
        result += "2";
        address = "000";
        data =
            FFAppState().CurrentDeviceInfo.line02Raw.replaceAll(";", "").trim();
      }
      if (i == 2) {
        result += "3";
        address = "010";
        data =
            FFAppState().CurrentDeviceInfo.line03Raw.replaceAll(";", "").trim();
      }
      if (i == 3) {
        result += "4";
        address = "020";
        data =
            FFAppState().CurrentDeviceInfo.line04Raw.replaceAll(";", "").trim();
      }
      if (i == 4) {
        result += "5";
        address = "030";
        data =
            FFAppState().CurrentDeviceInfo.line05Raw.replaceAll(";", "").trim();
      }
      if (i == 5) {
        result += "6";
        address = "040";
        data = "255255255255255255255255255255255255";
      }

      // execute delete / override
      String url =
          "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=" +
              address +
              data;
      var erg = await http.get(Uri.parse(url));
    }
  }
  result += ".OK";

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(result)),
  );
}
