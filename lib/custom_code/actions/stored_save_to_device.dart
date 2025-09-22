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

Future storedSaveToDevice(BuildContext context, String name) async {
  bool found = false;
  List<String> lines = [];

  FFAppState().saved.forEach((element) {
    if (element.name == name) {
      found = true;
      lines = element.lines;
    }
  });

  if (found == false) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text("NOK. " + name + " not found")),
    );
    return;
  }

  // delete all lines
  final req =
      await http.get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=E"));
  if (req.statusCode == 200) {}

  // send line 1 if exist
  if (lines[0] != null) {
    String data = func.prepareToSend(lines[0]);
    final req0 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=000" +
            data));
    if (req0.statusCode == 200) {}
  }

  // send line 2 if exist
  if (lines[1] != null) {
    String data = func.prepareToSend(lines[1]);
    final req1 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=010" +
            data));
    if (req1.statusCode == 200) {}
  }

  // send line 3 if exist
  if (lines[2] != null) {
    String data = func.prepareToSend(lines[2]);
    final req2 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=020" +
            data));
    if (req2.statusCode == 200) {}
  }

  // send line 4 if exist
  if (lines[3] != null) {
    String data = func.prepareToSend(lines[3]);
    final req3 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=030" +
            data));
    if (req3.statusCode == 200) {}
  }

  // send line 5 if exist
  if (lines[4] != null) {
    String data = func.prepareToSend(lines[4]);
    final req4 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=040" +
            data));
    if (req4.statusCode == 200) {}
  }

  // send line 6 if exist
  if (lines[5] != null) {
    String data = func.prepareToSend(lines[5]);
    final req5 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=050" +
            data));
    if (req5.statusCode == 200) {}
  }

  // send line 7 if exist
  if (lines[6] != null) {
    String data = func.prepareToSend(lines[6]);
    final req6 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=060" +
            data));
    if (req6.statusCode == 200) {}
  }

  // send line 8 if exist
  if (lines[7] != null) {
    String data = func.prepareToSend(lines[7]);
    final req7 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=070" +
            data));
    if (req7.statusCode == 200) {}
  }

  // send line 9 if exist
  if (lines[8] != null) {
    String data = func.prepareToSend(lines[8]);
    final req8 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=080" +
            data));
    if (req8.statusCode == 200) {}
  }

  // send line 10 if exist
  if (lines[9] != null) {
    String data = func.prepareToSend(lines[9]);
    final req9 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=090" +
            data));
    if (req9.statusCode == 200) {}
  }

  // send line 11 if exist
  if (lines[10] != null) {
    String data = func.prepareToSend(lines[10]);
    final req10 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=100" +
            data));
    if (req10.statusCode == 200) {}
  }

  // send line 12 if exist
  if (lines[11] != null) {
    String data = func.prepareToSend(lines[11]);
    final req11 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=110" +
            data));
    if (req11.statusCode == 200) {}
  }

  // send line 13 if exist
  if (lines[12] != null) {
    String data = func.prepareToSend(lines[12]);
    final req12 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=120" +
            data));
    if (req12.statusCode == 200) {}
  }

  // send line 14 if exist
  if (lines[13] != null) {
    String data = func.prepareToSend(lines[13]);
    final req13 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=11&DATA=130" +
            data));
    if (req13.statusCode == 200) {}
  }

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text("OK, " + name + " restored.")),
  );
}
