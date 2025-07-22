// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
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
  List lines = ["255255255255255255255255255255255"];
  lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line01Raw));
  lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line02Raw));
  lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line03Raw));
  lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line04Raw));
  lines.add(func.prepareToSend(FFAppState().CurrentDeviceInfo.line05Raw));

  int deletedLine = FFAppState().CurrentDeviceInfo.currentLineNumber;
  int lastLine = FFAppState().CurrentDeviceInfo.linesTotal;
  String address = "";
  String data = "";
  String url = "";

  String result = "Delete line " +
      deletedLine.toString() +
      " of " +
      lastLine.toString() +
      ". ";

  if (deletedLine != lastLine) {
    // copy lastline to deleted line
    lines[deletedLine] = lines[lastLine];
  }

  // remove deleted line -1
  deletedLine = deletedLine - 1;

  // delte all lines
  final req =
      await http.get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=E"));
  if (req.statusCode == 200) {
    result += "del OK.";
  }

  // write line 1
  if (deletedLine >= 1) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=000" +
        lines[1];
    final req1 = await http.get(Uri.parse(url));
    if (req1.statusCode == 200) {
      result += "1 OK.";
    }
  }
  // write line 2
  if (deletedLine >= 2) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=010" +
        lines[2];
    final req2 = await http.get(Uri.parse(url));
    if (req2.statusCode == 200) {
      result += "2 OK.";
    }
  }
  // write line 3
  if (deletedLine >= 3) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=020" +
        lines[3];
    final req3 = await http.get(Uri.parse(url));
    if (req3.statusCode == 200) {
      result += "3 OK.";
    }
  }
  // write line 4
  if (deletedLine >= 4) {
    url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=030" +
        lines[4];
    final req4 = await http.get(Uri.parse(url));
    if (req4.statusCode == 200) {
      result += "4 OK.";
    }
  }

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(result)),
  );
}
