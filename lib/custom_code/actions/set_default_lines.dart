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

import 'package:http/http.dart' as http;
import 'dart:convert';

Future<void> setDefaultLines(BuildContext context) async {
  try {
    if (FFAppState().CurrentDeviceInfo.typeLetter == "A") {
      await http.get(Uri.parse(
          "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=000254000000023045001001100100011"));
    }

    if (FFAppState().CurrentDeviceInfo.typeLetter == "V") {
      await http.get(Uri.parse(
          "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=000254000000023045200001001100000"));
    }

    if (FFAppState().CurrentDeviceInfo.typeLetter == "Q") {
      await http.get(Uri.parse(
          "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=000254000000023045001001100100002"));
      await http.get(Uri.parse(
          "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=010254000000023045002001100049004"));
      await http.get(Uri.parse(
          "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=020254000000023045003001100033006"));
      await http.get(Uri.parse(
          "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=030254000000023045004001100022008"));
    }

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('OK')),
    );

    // Day = .ToByte(Convert.ToInt32(parts[0]))
    // TimeStartHour = Convert.ToInt32(parts[1]);
    // TimeStartMinute = Convert.ToInt32(parts[2]);
    // TimeStopHour = Convert.ToInt32(parts[3]);
    // TimeStopMinute = (Convert.ToInt32(parts[4]));
    // FanValue = Convert.ToInt32(parts[5]);
    // VenturiIntervall = Convert.ToInt32(parts[6]);
    // VenturiDuration = Convert.ToInt32(parts[7]);
    // tmpspeed = Convert.ToInt32(parts[8]);
    // Intervall = Convert.ToInt32(parts[9]);

    // if (tmpspeed == 100) Speed = 100;
    // if (tmpspeed == 49) Speed = 90;
    // if (tmpspeed == 33) Speed = 80;
    // if (tmpspeed == 22) Speed = 70;
    // if (tmpspeed == 16) Speed = 60;
    // if (tmpspeed == 11) Speed = 50;
  } catch (e) {
    return;
  }
}
