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
import '/custom_code/actions/index.dart' as act;
import 'dart:convert';

Future<void> readOutDevice(BuildContext context) async {
  int Address = 0;
  FFAppState().update(() {
    FFAppState().CurrentDeviceInfo.line01Vissible = false;
    FFAppState().CurrentDeviceInfo.line02Vissible = false;
    FFAppState().CurrentDeviceInfo.line03Vissible = false;
    FFAppState().CurrentDeviceInfo.line04Vissible = false;
    FFAppState().CurrentDeviceInfo.line05Vissible = false;
  });

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
        bool LineVissible = false;

        try {
          if (!resp.startsWith("255")) {
            LineVissible = true;
            desc = func.getLineDescription(resp);
          }
        } catch (e) {
          LineVissible = false;
          desc = "";
        }

        FFAppState().update(() {
          if (line == 1) {
            FFAppState().CurrentDeviceInfo.line01Raw = resp;
            FFAppState().CurrentDeviceInfo.line01Description = desc;
            FFAppState().CurrentDeviceInfo.line01Vissible = LineVissible;
            if (LineVissible) FFAppState().CurrentDeviceInfo.linesTotal = 1;
          }
          if (line == 2) {
            FFAppState().CurrentDeviceInfo.line02Raw = resp;
            FFAppState().CurrentDeviceInfo.line02Description = desc;
            FFAppState().CurrentDeviceInfo.line02Vissible = LineVissible;
            if (LineVissible) FFAppState().CurrentDeviceInfo.linesTotal = 2;
          }
          if (line == 3) {
            FFAppState().CurrentDeviceInfo.line03Raw = resp;
            FFAppState().CurrentDeviceInfo.line03Description = desc;
            FFAppState().CurrentDeviceInfo.line03Vissible = LineVissible;
            if (LineVissible) FFAppState().CurrentDeviceInfo.linesTotal = 3;
          }
          if (line == 4) {
            FFAppState().CurrentDeviceInfo.line04Raw = resp;
            FFAppState().CurrentDeviceInfo.line04Description = desc;
            FFAppState().CurrentDeviceInfo.line04Vissible = LineVissible;
            if (LineVissible) FFAppState().CurrentDeviceInfo.linesTotal = 4;
          }
          if (line == 5) {
            FFAppState().CurrentDeviceInfo.line05Raw = resp;
            FFAppState().CurrentDeviceInfo.line05Description = desc;
            FFAppState().CurrentDeviceInfo.line05Vissible = LineVissible;
            if (LineVissible) FFAppState().CurrentDeviceInfo.linesTotal = 5;
          }
        });
      }
    } catch (e) {
      //return;
    }
    // for the next loop
    Address = Address + 10;
  }
  await act.getInfo(context);
}
