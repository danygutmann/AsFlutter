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

Future<void> sendNewLine(BuildContext context) async {
  String ArgToSend = "";
  String Letter = FFAppState().CurrentDeviceInfo.typeLetter;
  String Address = "050";
  String LineNumber = "-1";

  try {
    if (FFAppState().CurrentDeviceInfo.line01Raw.startsWith("255")) {
      LineNumber = "1";
      Address = "000";
    } else if (FFAppState().CurrentDeviceInfo.line02Raw.startsWith("255")) {
      LineNumber = "2";
      Address = "010";
    } else if (FFAppState().CurrentDeviceInfo.line03Raw.startsWith("255")) {
      LineNumber = "3";
      Address = "020";
    } else if (FFAppState().CurrentDeviceInfo.line04Raw.startsWith("255")) {
      LineNumber = "4";
      Address = "030";
    } else if (FFAppState().CurrentDeviceInfo.line05Raw.startsWith("255")) {
      LineNumber = "5";
      Address = "040";
    } else if (FFAppState().CurrentDeviceInfo.line06Raw.startsWith("255")) {
      LineNumber = "6";
      Address = "050";
    } else if (FFAppState().CurrentDeviceInfo.line07Raw.startsWith("255")) {
      LineNumber = "7";
      Address = "060";
    } else if (FFAppState().CurrentDeviceInfo.line08Raw.startsWith("255")) {
      LineNumber = "8";
      Address = "070";
    } else if (FFAppState().CurrentDeviceInfo.line09Raw.startsWith("255")) {
      LineNumber = "9";
      Address = "080";
    } else if (FFAppState().CurrentDeviceInfo.line10Raw.startsWith("255")) {
      LineNumber = "10";
      Address = "090";
    } else if (FFAppState().CurrentDeviceInfo.line11Raw.startsWith("255")) {
      LineNumber = "11";
      Address = "100";
    } else if (FFAppState().CurrentDeviceInfo.line12Raw.startsWith("255")) {
      LineNumber = "12";
      Address = "110";
    } else if (FFAppState().CurrentDeviceInfo.line13Raw.startsWith("255")) {
      LineNumber = "13";
      Address = "120";
    } else if (FFAppState().CurrentDeviceInfo.line14Raw.startsWith("255")) {
      LineNumber = "14";
      Address = "130";
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('just 14 lines possible')),
      );
      return;
    }
  } catch (e) {
    Address = "000";
    LineNumber = "-2";
  }

  // Day
  ArgToSend += "254";

  // start hour
  ArgToSend += "007";

  // startMinute
  ArgToSend += "000";

  // stopHour
  ArgToSend += "017";

  // stopMinute
  ArgToSend += "045";

  if (Letter == "V") {
    // fan
    ArgToSend += "200";

    // venturiInterval
    ArgToSend += "001";

    // venturiDuration
    ArgToSend += "001";

    // power
    ArgToSend += "000";

    // interval
    ArgToSend += "000";
  } else {
    // fan
    ArgToSend += "001";

    // alt: anlauf
    ArgToSend += "000";

    // alt: anlauf Speed
    ArgToSend += "000";

    // power
    ArgToSend += "100";

    // interval
    ArgToSend += "011";
  }

  // send data
  try {
    String url =
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=" +
            Address +
            ArgToSend;
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OK, added line ' + LineNumber)),
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
}
