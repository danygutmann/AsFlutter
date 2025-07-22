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
import 'dart:convert';

Future deleteLineCopy(
  BuildContext context,
) async {
  String result = "Delete line ";
  int deletedLine = FFAppState().CurrentDeviceInfo.currentLineNumber;
  bool isLastLine = FFAppState().CurrentDeviceInfo.currentLineIsLast;

  String data01 = "";
  String data02 = "";
  String data03 = "";
  String data04 = "";
  String data05 = "";

  result += deletedLine.toString() + ": move lines ";

  // generate new data
  for (int i = 1; i < 6; i++) {
    if (i < deletedLine) {
      if (i == 1) {
        result += "i1,";
        data01 =
            FFAppState().CurrentDeviceInfo.line01Raw.replaceAll(";", "").trim();
      }
      if (i == 2) {
        result += "i2,";
        data02 =
            FFAppState().CurrentDeviceInfo.line02Raw.replaceAll(";", "").trim();
      }
      if (i == 3) {
        result += "i3,";
        data03 =
            FFAppState().CurrentDeviceInfo.line03Raw.replaceAll(";", "").trim();
      }
      if (i == 4) {
        result += "i4,";
        data04 =
            FFAppState().CurrentDeviceInfo.line04Raw.replaceAll(";", "").trim();
      }
      if (i == 5) {
        result += "i5,";
        data05 =
            FFAppState().CurrentDeviceInfo.line05Raw.replaceAll(";", "").trim();
      }
    } else if (i >= deletedLine) {
      if (i == 1) {
        result += "d1,";
        data01 =
            FFAppState().CurrentDeviceInfo.line02Raw.replaceAll(";", "").trim();
      }
      if (i == 2) {
        result += "d2,";
        data02 =
            FFAppState().CurrentDeviceInfo.line03Raw.replaceAll(";", "").trim();
      }
      if (i == 3) {
        result += "d3,";
        data03 =
            FFAppState().CurrentDeviceInfo.line04Raw.replaceAll(";", "").trim();
      }
      if (i == 4) {
        result += "d4,";
        data04 =
            FFAppState().CurrentDeviceInfo.line05Raw.replaceAll(";", "").trim();
      }
      if (i == 5) {
        result += "d5,";
        data05 = "255255255255255255255255255255255";
      }
    }
  }

  // delte all lines
  var ergDel = await http
      .get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=E&LINES=1"));
  // write new lines

  int adr = 0;
  for (int i = 1; i < 6; i++) {
    String address = "";
    String data = "";
    address = adr.toString().padLeft(3, '0');

    if (i == 1) {
      result += "w1,";
      data = data01;
    }
    if (i == 2) {
      result += "w2,";
      data = data02;
    }
    if (i == 3) {
      result += "w3,";
      data = data03;
    }
    if (i == 4) {
      result += "w4,";
      data = data04;
    }
    if (i == 5) {
      result += "w5,";
      data = data05;
    }

    // execute delete / override
    String url =
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=" +
            address +
            data;
    var ergwrite = await http.get(Uri.parse(url));
    adr = adr + 10;
  }

  result += ".OK";

  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(content: Text(result)),
  );
}
