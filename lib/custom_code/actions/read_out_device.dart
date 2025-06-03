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

Future<void> readOutDevice(BuildContext context) async {
  int Address = 0;
  // loop over lines
  for (int line = 1; line < 6; line++) {
    String adr = Address.toString().padLeft(3, '0');
    String url =
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=R&LINES=1&DATA=" + adr;
    try {
      final req = await http.get(Uri.parse(url));
      if (req.statusCode == 200) {
        String resp = req.body.trim();
        String desc = "";

        try {
          desc = func.getLineDescription(resp);
        } catch (e) {
          desc = "error " + e.toString();
        }

        FFAppState().update(() {
          if (line == 1) {
            FFAppState().CurrentDeviceInfo.line01Raw = resp;
            FFAppState().CurrentDeviceInfo.line01Description = desc;
          }
          if (line == 2) {
            FFAppState().CurrentDeviceInfo.line02Raw = resp;
            FFAppState().CurrentDeviceInfo.line02Description = desc;
          }
          if (line == 3) {
            FFAppState().CurrentDeviceInfo.line03Raw = resp;
            FFAppState().CurrentDeviceInfo.line03Description = desc;
          }
          if (line == 4) {
            FFAppState().CurrentDeviceInfo.line04Raw = resp;
            FFAppState().CurrentDeviceInfo.line04Description = desc;
          }
          if (line == 5) {
            FFAppState().CurrentDeviceInfo.line05Raw = resp;
            FFAppState().CurrentDeviceInfo.line05Description = desc;
          }
        });
      }
    } catch (e) {
      //return;
    }
    // for the next loop
    Address = Address + 10;
  }
}
