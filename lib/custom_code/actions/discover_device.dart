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

//import '/flutter_flow/custom_functions.dart'; // Imports custom functions

//import '/flutter_flow/custom_functions.dart'; // Imports custom functions

import 'package:http/http.dart' as http;
//import '/flutter_flow/custom_functions.dart' as func;
import 'dart:convert';

Future<void> discoverDevice(BuildContext context) async {
  // get Type

  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.deviceButtonVissible = false;
  });

  String typeLetter = "X";
  try {
    final responseType = await http
        .get(Uri.parse("http://192.168.4.1/CMD/?CMD=SendCmd&SUBCMD=GT"));
    if (responseType.statusCode == 200) {
      FFAppState().update(() {
        String type = responseType.body.trim();
        FFAppState().CurrentDeviceInfo.type = type;

        FFAppState().CurrentDeviceInfo.line01Vissible = false;
        FFAppState().CurrentDeviceInfo.line02Vissible = false;
        FFAppState().CurrentDeviceInfo.line03Vissible = false;
        FFAppState().CurrentDeviceInfo.line04Vissible = false;
        FFAppState().CurrentDeviceInfo.line05Vissible = false;

        // get letter
        if (type.toLowerCase().contains("aromare")) {
          typeLetter = "A";
          FFAppState().CurrentDeviceInfo.typeLetter = typeLetter;
          FFAppState().CurrentDeviceInfo.showFanSelector = false;
          FFAppState().CurrentDeviceInfo.showPowerSelector = false;
          FFAppState().CurrentDeviceInfo.showVenturiSelector = false;
        }
        if (type.toLowerCase().contains("venturi")) {
          typeLetter = "V";
          FFAppState().CurrentDeviceInfo.typeLetter = typeLetter;
          FFAppState().CurrentDeviceInfo.showFanSelector = true;
          FFAppState().CurrentDeviceInfo.showPowerSelector = true;
          FFAppState().CurrentDeviceInfo.showVenturiSelector = true;
        }
        if (type.toLowerCase().contains("quad")) {
          typeLetter = "Q";
          FFAppState().CurrentDeviceInfo.typeLetter = typeLetter;
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

  // get pwm
  if (typeLetter != "A") {
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
}
