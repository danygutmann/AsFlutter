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
  int fanVenturi,
) async {
  String ArgToSend = "";
  String TypeLetter = "Q";
  //TypeLetter = FFAppState().CurrentDeviceInfo.typeLetter;

  // Day
  try {
    int day = 0;
    if (montag) day = day + 2;
    if (dienstag) day = day + 4;
    if (mittwoch) day = day + 8;
    if (donnerstag) day = day + 16;
    if (freitag) day = day + 32;
    if (samstag) day = day + 64;
    if (sonntag) day = day + 128;
    ArgToSend += day.toString().padLeft(3, '0');
    FFAppState().update(() {
      FFAppState().CurrentDeviceInfo.currentLineDayInt = day;
    });
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error day: $e')),
    );
  }

  // start hour
  try {
    ArgToSend += startHour.toString().padLeft(3, '0');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error startHour: $e')),
    );
  }

  // startMinute
  try {
    ArgToSend += startMinute.toString().padLeft(3, '0');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error startMinute: $e')),
    );
  }

  // stopHour
  try {
    ArgToSend += stopHour.toString().padLeft(3, '0');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error stopHour: $e')),
    );
  }

  // stopMinute
  try {
    ArgToSend += stopMinute.toString().padLeft(3, '0');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error stopMinute: $e')),
    );
  }

  // fan
  try {
    if (TypeLetter == "V") {
      ArgToSend += fanVenturi.toString().padLeft(3, '0');
    } else {
      ArgToSend += fan.toString().padLeft(3, '0');
    }
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error fan: $e')),
    );
  }

  // venturiInterval
  try {
    ArgToSend += venturiInterval.toString().padLeft(3, '0');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error venturiInterval: $e')),
    );
  }

  // venturiDuration
  try {
    ArgToSend += venturiDuration.toString().padLeft(3, '0');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error venturiDuration: $e')),
    );
  }

  // power
  try {
    ArgToSend += power.toString().padLeft(3, '0');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error power: $e')),
    );
  }

  // interval
  try {
    ArgToSend += interval.toString().padLeft(3, '0');
  } catch (e) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Error interval: $e')),
    );
  }

  // send data
  try {
    String url =
        "http://192.168.4.1/CMD/?CMD=SendData&SUBCMD=P&LINES=12&DATA=" +
            address +
            ArgToSend;
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('OK')),
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
