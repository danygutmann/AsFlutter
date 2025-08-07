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
import '/flutter_flow/custom_functions.dart' as func;
import 'dart:convert';

Future deleteLineCopy2(
  BuildContext context,
) async {
  String address = "";
  String data = "";
  String url = "";
  int deletedLine = FFAppState().CurrentDeviceInfo.currentLineNumber;

  List lines = ["000"];
  if (FFAppState().CurrentDeviceInfo.line01Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line01Raw));

  if (FFAppState().CurrentDeviceInfo.line02Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line02Raw));

  if (FFAppState().CurrentDeviceInfo.line03Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line03Raw));

  if (FFAppState().CurrentDeviceInfo.line04Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line04Raw));

  if (FFAppState().CurrentDeviceInfo.line05Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line05Raw));

  int cntBefore = lines.length - 1;
  int lastLine = FFAppState().CurrentDeviceInfo.linesTotal;

  String result =
      "Delete line " + deletedLine.toString() + " of " + cntBefore.toString();

  // delete in array
  lines.removeAt(deletedLine);

  // get array indexes
  var indexes = lines.asMap();

  // delte all lines
  final req =
      await http.get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=E"));
  if (req.statusCode == 200) {}

  // write line 1
  if (indexes.containsKey(1)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=000" +
        lines[1];
    final req1 = await http.get(Uri.parse(url));
    if (req1.statusCode == 200) {}
  }
  // write line 2
  if (indexes.containsKey(2)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=010" +
        lines[2];
    final req2 = await http.get(Uri.parse(url));
    if (req2.statusCode == 200) {}
  }
  // write line 3
  if (indexes.containsKey(3)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=020" +
        lines[3];
    final req3 = await http.get(Uri.parse(url));
    if (req3.statusCode == 200) {}
  }
  // write line 4
  if (indexes.containsKey(4)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=030" +
        lines[4];
    final req4 = await http.get(Uri.parse(url));
    if (req4.statusCode == 200) {}
  }

  result += " OK.";
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(result)),
  );
}
