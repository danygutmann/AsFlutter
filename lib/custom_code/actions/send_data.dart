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

Future<void> sendData(
  BuildContext context,
  bool montag,
  bool dienstag,
  bool mittwoch,
  bool donnerstag,
  bool freitag,
  bool samstag,
  bool sonntag,
  String address,
  int startHour,
  int startMinute,
  int stopHour,
  int stopMinute,
  int fan,
  int venturiInterval,
  int venturiDuration,
  int power,
  int interval,
) async {
  // output Variable
  String ArgToSend = "";

  // prepare Day
  int day = 0;
  if (montag) day = day + 1;
  if (dienstag) day = day + 2;
  if (mittwoch) day = day + 2;
  if (donnerstag) day = day + 2;
  if (freitag) day = day + 2;
  if (samstag) day = day + 2;
  if (sonntag) day = day + 2;

  // prepare other args
  ArgToSend += day.toString().padLeft(3, '0');
  ArgToSend += startHour.toString().padLeft(3, '0');
  ArgToSend += startMinute.toString().padLeft(3, '0');
  ArgToSend += stopHour.toString().padLeft(3, '0');
  ArgToSend += stopMinute.toString().padLeft(3, '0');
  ArgToSend += fan.toString().padLeft(3, '0');
  ArgToSend += venturiInterval.toString().padLeft(3, '0');
  ArgToSend += venturiDuration.toString().padLeft(3, '0');
  ArgToSend += power.toString().padLeft(3, '0');
  ArgToSend += interval.toString().padLeft(3, '0');

  // send to device
  String url = "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=" +
      address +
      ArgToSend;

  try {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OK')),
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('NOK')),
      );
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error: $e')),
    );
  }
}
