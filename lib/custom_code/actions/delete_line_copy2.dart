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

  if (FFAppState().CurrentDeviceInfo.line06Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line06Raw));

  if (FFAppState().CurrentDeviceInfo.line07Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line07Raw));

  if (FFAppState().CurrentDeviceInfo.line08Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line08Raw));

  if (FFAppState().CurrentDeviceInfo.line09Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line09Raw));

  if (FFAppState().CurrentDeviceInfo.line10Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line10Raw));

  if (FFAppState().CurrentDeviceInfo.line11Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line11Raw));

  if (FFAppState().CurrentDeviceInfo.line12Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line12Raw));

  if (FFAppState().CurrentDeviceInfo.line13Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line13Raw));

  if (FFAppState().CurrentDeviceInfo.line14Vissible)
    lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line14Raw));

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
  // write line 5
  if (indexes.containsKey(5)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=040" +
        lines[5];
    final req5 = await http.get(Uri.parse(url));
    if (req5.statusCode == 200) {}
  }
  // write line 6
  if (indexes.containsKey(6)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=050" +
        lines[6];
    final req6 = await http.get(Uri.parse(url));
    if (req6.statusCode == 200) {}
  }
  // write line 7
  if (indexes.containsKey(7)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=060" +
        lines[7];
    final req7 = await http.get(Uri.parse(url));
    if (req7.statusCode == 200) {}
  }
  // write line 8
  if (indexes.containsKey(8)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=070" +
        lines[8];
    final req8 = await http.get(Uri.parse(url));
    if (req8.statusCode == 200) {}
  }
  // write line 9
  if (indexes.containsKey(9)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=080" +
        lines[9];
    final req9 = await http.get(Uri.parse(url));
    if (req9.statusCode == 200) {}
  }
  // write line 10
  if (indexes.containsKey(10)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=090" +
        lines[10];
    final req10 = await http.get(Uri.parse(url));
    if (req10.statusCode == 200) {}
  }
  // write line 11
  if (indexes.containsKey(11)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=100" +
        lines[11];
    final req11 = await http.get(Uri.parse(url));
    if (req11.statusCode == 200) {}
  }
  // write line 12
  if (indexes.containsKey(12)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=110" +
        lines[12];
    final req12 = await http.get(Uri.parse(url));
    if (req12.statusCode == 200) {}
  }
  // write line 13
  if (indexes.containsKey(13)) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=120" +
        lines[13];
    final req13 = await http.get(Uri.parse(url));
    if (req13.statusCode == 200) {}
  }

  result += " OK.";
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(result)),
  );
}
