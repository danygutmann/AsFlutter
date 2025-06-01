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

//import '/flutter_flow/custom_functions.dart'; // Imports custom functions

import 'package:http/http.dart' as http;
//import '/flutter_flow/custom_functions.dart' as func;
import 'dart:convert';

Future<void> discoverDevice(BuildContext context) async {
  // get Type
  try {
    final responseType = await http
        .get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=GT"));
    if (responseType.statusCode == 200) {
      FFAppState().update(() {
        String type = responseType.body.trim();
        FFAppState().CurrentDeviceInfo.type = type;
        // get letter
        if (type.toLowerCase().contains("aromare")) {
          FFAppState().CurrentDeviceInfo.typeLetter = "A";
          FFAppState().CurrentDeviceInfo.showFanSelector = false;
          FFAppState().CurrentDeviceInfo.showPowerSelector = false;
          FFAppState().CurrentDeviceInfo.showVenturiSelector = false;
        }
        if (type.toLowerCase().contains("venturi")) {
          FFAppState().CurrentDeviceInfo.typeLetter = "V";
          FFAppState().CurrentDeviceInfo.showFanSelector = true;
          FFAppState().CurrentDeviceInfo.showPowerSelector = true;
          FFAppState().CurrentDeviceInfo.showVenturiSelector = true;
        }
        if (type.toLowerCase().contains("quad")) {
          FFAppState().CurrentDeviceInfo.typeLetter = "Q";
          FFAppState().CurrentDeviceInfo.showFanSelector = true;
          FFAppState().CurrentDeviceInfo.showPowerSelector = true;
          FFAppState().CurrentDeviceInfo.showVenturiSelector = false;
        }
      });
    }
  } catch (e) {
    FFAppState().CurrentDeviceInfo.deviceButtonVissible = false;
    return;
  }
  // get Serial
  try {
    final responseSerial = await http
        .get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=GS"));
    if (responseSerial.statusCode == 200) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.serial = responseSerial.body.trim();
        FFAppState().CurrentDeviceInfo.deviceName =
            FFAppState().CurrentDeviceInfo.type +
                " " +
                responseSerial.body.trim();
        FFAppState().CurrentDeviceInfo.deviceButtonVissible = true;
      });
    }
  } catch (e) {
    FFAppState().CurrentDeviceInfo.deviceButtonVissible = false;
    return;
  }

  // get Alias
  try {
    final responseAlias = await http
        .get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=GetAlias"));
    if (responseAlias.statusCode == 200) {
      FFAppState().update(() {
        FFAppState().CurrentDeviceInfo.alias = responseAlias.body.trim();
      });
    }
  } catch (e) {
    FFAppState().CurrentDeviceInfo.deviceButtonVissible = false;
    return;
  }

  // get line 1
  try {
    final responseLine01 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=R&LINES=1&DATA=000"));
    if (responseLine01.statusCode == 200) {
      FFAppState().update(() {
        String resp = responseLine01.body.trim();
        FFAppState().CurrentDeviceInfo.line01Raw = resp;
        FFAppState().CurrentDeviceInfo.line01Description = resp;
      });
    }
  } catch (e) {
    return;
  }
  // get line 2
  try {
    final responseLine02 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=R&LINES=1&DATA=010"));
    if (responseLine02.statusCode == 200) {
      FFAppState().update(() {
        String resp = responseLine02.body.trim();
        FFAppState().CurrentDeviceInfo.line02Raw = resp;
        FFAppState().CurrentDeviceInfo.line02Description = resp;
      });
    }
  } catch (e) {
    return;
  }
  // get line 3
  try {
    final responseLine03 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=R&LINES=1&DATA=020"));
    if (responseLine03.statusCode == 200) {
      FFAppState().update(() {
        String resp = responseLine03.body.trim();
        FFAppState().CurrentDeviceInfo.line03Raw = resp;
        FFAppState().CurrentDeviceInfo.line03Description = resp;
      });
    }
  } catch (e) {
    return;
  }
  // get line 4
  try {
    final responseLine04 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=R&LINES=1&DATA=030"));
    if (responseLine04.statusCode == 200) {
      FFAppState().update(() {
        String resp = responseLine04.body.trim();
        FFAppState().CurrentDeviceInfo.line04Raw = resp;
        FFAppState().CurrentDeviceInfo.line04Description = resp;
      });
    }
  } catch (e) {
    return;
  }
  // get line 5
  try {
    final responseLine05 = await http.get(Uri.parse(
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=R&LINES=1&DATA=040"));
    if (responseLine05.statusCode == 200) {
      FFAppState().update(() {
        String resp = responseLine05.body.trim();
        FFAppState().CurrentDeviceInfo.line05Raw = resp;
        FFAppState().CurrentDeviceInfo.line05Description = resp;
      });
    }
  } catch (e) {
    return;
  }

  // get pwm
  try {
    final responseAlias = await http
        .get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=PWMGET"));
    if (responseAlias.statusCode == 200) {
      FFAppState().update(() {
        String resp = responseAlias.body.trim();
        FFAppState().CurrentDeviceInfo.pwm = resp;
      });
    }
  } catch (e) {
    return;
  }
}
